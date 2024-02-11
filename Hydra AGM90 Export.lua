---- SHORTHANDS----
m,i,o,p = math,input,output,property
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pgn,pgb = p.getNumber, p.getBool
abs,cos,sin,acos,asin,tan,atan = m.abs, m.cos, m.sin, m.acos, m.asin, m.tan, m.atan
pi = m.pi
pi2 = pi*2

---- VECTOR FUNCTIONS ----
function vec(x,y,z)
return {x=x or 0,y=y or 0,z=z or 0}
end
function multf(a,n)
return vec(a.x*n, a.y*n, a.z*n)
end
function invert(a)
return multf(a, -1)
end
function divf(a,n)
return multf(a,1/n)
end
function add(a,b)
return vec(a.x+b.x, a.y+b.y, a.z+b.z)
end
function subt(a,b)
return add(a,invert(b))
end
function length(a)
return m.sqrt(a.x*a.x+a.y*a.y+a.z*a.z)
end
function norm(a)
return multf(a,1/length(a))
end
function cross(a,b)
return vec(a.y*b.z-a.z*b.y, a.z*b.x-a.x*b.z, a.x*b.y-a.y*b.x)
end
function dot(a,b)
return a.x*b.x+a.y*b.y+a.z*b.z
end
function project(a,b)
return multf(norm(b), dot(a, norm(b)))
end
function reject(a,b)
return subt(a, multf(norm(b), dot(a, norm(b))))
end
function reflect(a, b, factor)
return subt(a, multf(reject(a, b), factor or 2))
end
function stoc(hor,ver,d)
local d=d or 1
return vec(m.sin(hor)*m.cos(ver)*d, m.cos(hor)*m.cos(ver)*d, m.sin(ver)*d)
end
function tolocal(a,r,f,u)
return vec(dot(r,a),dot(f,a),dot(u,a))
end
function torelative(a,r,f,u)
return add(add(multf(r,a.x), multf(f,a.y)), multf(u,a.z))
end

---- MISSILE FUNCTIONS ----
function clamp(x, y, z)
return m.max(y, m.min(x, z))
end
function dumboutput()
	--debug.log("dumb")
	output.setNumber(1, trimX)
	output.setNumber(2, trimY)
end
function getclear()
	output.setNumber(1, 0)
	output.setNumber(2,0.1)
end
function delta(c,b)if not a then a={}a[b]={oldVar=0,deltaVar=0}elseif not a[b]then a[b]={oldVar=0,deltaVar=0}end;a[b].deltaVar=c-a[b].oldVar;a[b].oldVar=c;return a[b].deltaVar end
function vecDelta(d,b)if not a then a={}a[b]={oldVec=vec(),deltaVec=vec()}elseif not a[b]then a[b]={oldVec=vec(),deltaVec=vec()}end;a[b].deltaVec=subt(d,a[b].oldVec)a[b].oldVec=d;return a[b].deltaVec end

---- MISSILE VARS ----
trimX = pgn("trim yaw")
trimY = pgn("trim pitch")
nav = pgn("Nav Constant")
maxc = pgn("Max Control")
notdumblaunch = not property.getBool("dumb launch?")
launchedtimer = 0

---- IFF / DATALINK SETUP ----
ourfreq = pgn("Used freq")

---- MAIN ----
function onTick()
	--debug.log("ontick called")
	--link up with host
	osn(3,ourfreq)
	hostpos = vec(ign(4),ign(5),ign(6))
	--hostsel = vec(ign(14),ign(15),ign(16))
	--debug.log("hostpos: "..hostpos.x..", "..hostpos.y..", "..hostpos.z.."\nhostsel: "..hostsel.x..", "..hostsel.y..", "..hostsel.z)

	if notdumblaunch then
		--debug.log("notdumblaunch")
		if ign(17) == 1 then
			--debug.log("hardpoint fired")
			if launchedtimer < 10 then--increment timer
				--debug.log("launch timer counting")
				launchedtimer = launchedtimer + 1
				dumboutput()
			else--we been off rail for 20 ticks, so actually guide	
				--debug.log("launch timer DONE")
				--get all phys sensor info, flip z and y pos
				mypos = vec(ign(1),ign(3),ign(2))
				
				--phys sens rot to facing vectors
				rx,ry,rz=ign(4),ign(5),ign(6)
				cx,cy,cz=math.cos(rx),math.cos(ry),math.cos(rz)
				sx,sy,sz=math.sin(rx),math.sin(ry),math.sin(rz)
				right = vec(cy*cz, -sy, cy*sz)
				fwd = vec(sx*sz + cx*sy*cz, cx*cy, -sx*cz + cx*sy*sz)
				up = cross(right,fwd)
				

				--Calculate TGT local position from radars
				rdrXazim = ign(7)*pi2
				rdrYelev = ign(8)*pi2

				rdrXdist = ign(9)
				rdrYdist = ign(10)
					
				hh = m.sin(rdrXazim) * rdrXdist
				hv = m.sin(rdrYelev) * rdrYdist
				k1 = m.cos(rdrYelev) * rdrYdist
				l = (k1^2 - hh^2)^.5
				tgt_pos_local = vec(hh,l,hv)
				
				xyz_acquired = length(tgt_pos_local)>0
				if xyz_acquired then
					--debug.log("sees target")
					tgt_pos_global = add(mypos,torelative(tgt_pos_local,right,fwd,up))
					--osn(4,tgt_pos_global.x)
					--osn(5,tgt_pos_global.y)
					--osn(6,tgt_pos_global.z)

					if length(subt(hostpos,tgt_pos_global)) <= 35 then
						--debug.log("evading, too close to host")
						getclear()
					else
						--debug.log("tracking")
						--positions
						tgtpos = tgt_pos_global							--get tgt pos
						relpos = subt(tgtpos,mypos)						--find relative pos
						normrelpos = norm(relpos)						--normalize relative pos
						dist = length(relpos)							--find distance

						--derivatives
						myvel  = vecDelta(mypos,"myvel")					--find my vel
						--debug.log((length(myvel)*60).." "..(length(myvel)*60/343))
						tgtvel = vecDelta(tgtpos,"tgtvel")					--find tgt vel
						tgtacc = vecDelta(tgtvel,"tgtacc")					--find tgt acc
						tgtjer = vecDelta(tgtacc,"tgtjer")					--find tgt jerk

						relvel = subt(tgtvel,myvel)						--find relative vel
						cv = -delta(dist,"cv")							--find closing vel

						--rest
						tti = clamp(dist/cv,-70,70)						--find time to impact

						tgtaccperplos = reject(tgtacc,normrelpos)		--find tgt acc perpendicular to LOS
						tgtjerperplos = reject(tgtjer,normrelpos)		--find tgt jerk perpendicular to LOS

						relzem = add(relpos,multf(relvel,tti))			--find relative zem
						zemperplos = reject(relzem,normrelpos)			--find zem perpendicular to LOS

						glocmd = add(add(divf(multf(relzem,nav),tti^2),divf(multf(tgtaccperplos,nav),2)),divf(multf(tgtjerperplos,nav),6)) --insane black magic sauce provided by kubson..
						loccmd = tolocal(glocmd,right,fwd,up)
						
						osn(1,clamp(-loccmd.x,-maxc,maxc)+trimX)
						osn(2,clamp(-loccmd.z,-maxc,maxc)+trimY)
					end
				end
			end
		end
	else
		--debug.log("notdumblaunch =//= true")
		dumboutput()
	end
end