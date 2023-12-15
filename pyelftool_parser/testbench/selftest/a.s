
a.elf:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 e1 2f 00 00 	mov    0x2fe1(%rip),%rax        # 3ff0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	push   0x2f9a(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmp *0x2f9b(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	f2 ff 25 8d 2f 00 00 	bnd jmp *0x2f8d(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001050 <_Znam@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 75 2f 00 00 	bnd jmp *0x2f75(%rip)        # 3fd0 <_Znam@GLIBCXX_3.4>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	45 31 c0             	xor    %r8d,%r8d
    1076:	31 c9                	xor    %ecx,%ecx
    1078:	48 8d 3d 1f 02 00 00 	lea    0x21f(%rip),%rdi        # 129e <main>
    107f:	ff 15 5b 2f 00 00    	call   *0x2f5b(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt    
    1086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4010 <__TMC_END__>
    1097:	48 8d 05 72 2f 00 00 	lea    0x2f72(%rip),%rax        # 4010 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 3e 2f 00 00 	mov    0x2f3e(%rip),%rax        # 3fe8 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 4010 <__TMC_END__>
    10c7:	48 8d 35 42 2f 00 00 	lea    0x2f42(%rip),%rsi        # 4010 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 0d 2f 00 00 	mov    0x2f0d(%rip),%rax        # 3ff8 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 05 2f 00 00 00 	cmpb   $0x0,0x2f05(%rip)        # 4010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d c2 2e 00 00 	cmpq   $0x0,0x2ec2(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    0x2ee6(%rip),%rdi        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 dd 2e 00 00 01 	movb   $0x1,0x2edd(%rip)        # 4010 <__TMC_END__>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	ret    
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <_Z11calledFirstv>:
    1149:	f3 0f 1e fa          	endbr64 
    114d:	55                   	push   %rbp
    114e:	48 89 e5             	mov    %rsp,%rbp
    1151:	83 6d f8 37          	subl   $0x37,-0x8(%rbp)
    1155:	83 45 f8 30          	addl   $0x30,-0x8(%rbp)
    1159:	8b 45 f8             	mov    -0x8(%rbp),%eax
    115c:	89 45 fc             	mov    %eax,-0x4(%rbp)
    115f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1162:	01 45 f8             	add    %eax,-0x8(%rbp)
    1165:	90                   	nop
    1166:	5d                   	pop    %rbp
    1167:	c3                   	ret    

0000000000001168 <_Z10calledLastv>:
    1168:	f3 0f 1e fa          	endbr64 
    116c:	55                   	push   %rbp
    116d:	48 89 e5             	mov    %rsp,%rbp
    1170:	83 6d f8 37          	subl   $0x37,-0x8(%rbp)
    1174:	83 45 f8 30          	addl   $0x30,-0x8(%rbp)
    1178:	8b 45 f8             	mov    -0x8(%rbp),%eax
    117b:	89 45 fc             	mov    %eax,-0x4(%rbp)
    117e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1181:	01 45 f8             	add    %eax,-0x8(%rbp)
    1184:	90                   	nop
    1185:	5d                   	pop    %rbp
    1186:	c3                   	ret    

0000000000001187 <_Z9functcallii>:
    1187:	f3 0f 1e fa          	endbr64 
    118b:	55                   	push   %rbp
    118c:	48 89 e5             	mov    %rsp,%rbp
    118f:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1192:	89 75 e8             	mov    %esi,-0x18(%rbp)
    1195:	83 6d e8 37          	subl   $0x37,-0x18(%rbp)
    1199:	83 45 e8 30          	addl   $0x30,-0x18(%rbp)
    119d:	8b 45 e8             	mov    -0x18(%rbp),%eax
    11a0:	89 45 fc             	mov    %eax,-0x4(%rbp)
    11a3:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11a6:	01 45 e8             	add    %eax,-0x18(%rbp)
    11a9:	8b 45 e8             	mov    -0x18(%rbp),%eax
    11ac:	5d                   	pop    %rbp
    11ad:	c3                   	ret    

00000000000011ae <_Z12functioncallii>:
    11ae:	f3 0f 1e fa          	endbr64 
    11b2:	55                   	push   %rbp
    11b3:	48 89 e5             	mov    %rsp,%rbp
    11b6:	89 7d fc             	mov    %edi,-0x4(%rbp)
    11b9:	89 75 f8             	mov    %esi,-0x8(%rbp)
    11bc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    11c3:	eb 0b                	jmp    11d0 <_Z12functioncallii+0x22>
    11c5:	81 45 f8 c8 01 00 00 	addl   $0x1c8,-0x8(%rbp)
    11cc:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    11d0:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
    11d4:	7e ef                	jle    11c5 <_Z12functioncallii+0x17>
    11d6:	83 6d f8 37          	subl   $0x37,-0x8(%rbp)
    11da:	8b 45 f8             	mov    -0x8(%rbp),%eax
    11dd:	5d                   	pop    %rbp
    11de:	c3                   	ret    

00000000000011df <_Z7foocallii>:
    11df:	f3 0f 1e fa          	endbr64 
    11e3:	55                   	push   %rbp
    11e4:	48 89 e5             	mov    %rsp,%rbp
    11e7:	48 83 ec 20          	sub    $0x20,%rsp
    11eb:	89 7d ec             	mov    %edi,-0x14(%rbp)
    11ee:	89 75 e8             	mov    %esi,-0x18(%rbp)
    11f1:	bf 28 00 00 00       	mov    $0x28,%edi
    11f6:	e8 55 fe ff ff       	call   1050 <_Znam@plt>
    11fb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11ff:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1206:	eb 24                	jmp    122c <_Z7foocallii+0x4d>
    1208:	81 45 e8 c8 01 00 00 	addl   $0x1c8,-0x18(%rbp)
    120f:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1212:	48 98                	cltq   
    1214:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    121b:	00 
    121c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1220:	48 01 c2             	add    %rax,%rdx
    1223:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1226:	89 02                	mov    %eax,(%rdx)
    1228:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    122c:	83 7d f4 0a          	cmpl   $0xa,-0xc(%rbp)
    1230:	7e d6                	jle    1208 <_Z7foocallii+0x29>
    1232:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1236:	48 83 c0 14          	add    $0x14,%rax
    123a:	8b 00                	mov    (%rax),%eax
    123c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1240:	48 83 c2 1c          	add    $0x1c,%rdx
    1244:	8b 12                	mov    (%rdx),%edx
    1246:	29 d0                	sub    %edx,%eax
    1248:	89 45 e8             	mov    %eax,-0x18(%rbp)
    124b:	8b 45 e8             	mov    -0x18(%rbp),%eax
    124e:	c9                   	leave  
    124f:	c3                   	ret    

0000000000001250 <_Z3fibi>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	55                   	push   %rbp
    1255:	48 89 e5             	mov    %rsp,%rbp
    1258:	53                   	push   %rbx
    1259:	48 83 ec 18          	sub    $0x18,%rsp
    125d:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1260:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
    1264:	75 07                	jne    126d <_Z3fibi+0x1d>
    1266:	b8 01 00 00 00       	mov    $0x1,%eax
    126b:	eb 2b                	jmp    1298 <_Z3fibi+0x48>
    126d:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
    1271:	75 07                	jne    127a <_Z3fibi+0x2a>
    1273:	b8 01 00 00 00       	mov    $0x1,%eax
    1278:	eb 1e                	jmp    1298 <_Z3fibi+0x48>
    127a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    127d:	83 e8 01             	sub    $0x1,%eax
    1280:	89 c7                	mov    %eax,%edi
    1282:	e8 c9 ff ff ff       	call   1250 <_Z3fibi>
    1287:	89 c3                	mov    %eax,%ebx
    1289:	8b 45 ec             	mov    -0x14(%rbp),%eax
    128c:	83 e8 02             	sub    $0x2,%eax
    128f:	89 c7                	mov    %eax,%edi
    1291:	e8 ba ff ff ff       	call   1250 <_Z3fibi>
    1296:	01 d8                	add    %ebx,%eax
    1298:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    129c:	c9                   	leave  
    129d:	c3                   	ret    

000000000000129e <main>:
    129e:	f3 0f 1e fa          	endbr64 
    12a2:	55                   	push   %rbp
    12a3:	48 89 e5             	mov    %rsp,%rbp
    12a6:	48 83 ec 20          	sub    $0x20,%rsp
    12aa:	89 7d ec             	mov    %edi,-0x14(%rbp)
    12ad:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    12b1:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    12b8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    12bf:	8b 55 fc             	mov    -0x4(%rbp),%edx
    12c2:	8b 45 f8             	mov    -0x8(%rbp),%eax
    12c5:	89 d6                	mov    %edx,%esi
    12c7:	89 c7                	mov    %eax,%edi
    12c9:	e8 e0 fe ff ff       	call   11ae <_Z12functioncallii>
    12ce:	89 45 fc             	mov    %eax,-0x4(%rbp)
    12d1:	8b 55 fc             	mov    -0x4(%rbp),%edx
    12d4:	8b 45 f8             	mov    -0x8(%rbp),%eax
    12d7:	89 d6                	mov    %edx,%esi
    12d9:	89 c7                	mov    %eax,%edi
    12db:	e8 ff fe ff ff       	call   11df <_Z7foocallii>
    12e0:	89 45 fc             	mov    %eax,-0x4(%rbp)
    12e3:	bf 14 00 00 00       	mov    $0x14,%edi
    12e8:	e8 63 ff ff ff       	call   1250 <_Z3fibi>
    12ed:	90                   	nop
    12ee:	c9                   	leave  
    12ef:	c3                   	ret    

Disassembly of section .fini:

00000000000012f0 <_fini>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	48 83 ec 08          	sub    $0x8,%rsp
    12f8:	48 83 c4 08          	add    $0x8,%rsp
    12fc:	c3                   	ret    
