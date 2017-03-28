@rem The target scheme is based on the "High perfomance" scheme
set base_scheme=8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

@rem Just a random GUID
set target_scheme=f541242f-ab56-43d1-b29a-a3f415682c5a

@rem Duplicate base cheme
powercfg -duplicatescheme %base_scheme% %target_scheme% 

@rem Change target scheme name
powercfg -changename %target_scheme% "AC perfomance / DC power saver" "Favors perfomance when on AC, saves energy on DC"

set set_cmd=powercfg -setdcvalueindex %target_scheme%
set set_cmd=powercfg -setacvalueindex %target_scheme%

@rem Intel(R) Graphics Power Plan: Maximum Battery Life
%set_cmd% 44f3beca-a7c0-460e-9df2-bb8b99e0cba6 3619c3f2-afb2-4afc-b0e9-e7fef372de36 0

@rem Power plan type: Power saver
%set_cmd% fea3413e-7e05-4911-9a71-700331f1c294 245d8541-3943-4422-b025-13a784f679b7 0

@rem Device idle policy: Power savings
%set_cmd% fea3413e-7e05-4911-9a71-700331f1c294 4faab71a-92e5-4726-b531-224559672d19 1

@rem AHCI Link Power Management - HIPM/DIPM: HIPM+DIPM
%set_cmd% 0012ee47-9041-4b5d-9b77-535fba8b1442 0b2d69d7-a2a1-449c-9680-f91c70521c60 2

@rem Turn off hard disk after: 300
%set_cmd% 0012ee47-9041-4b5d-9b77-535fba8b1442 0b2d69d7-a2a1-449c-9680-f91c70521c60 300

@rem Desktop background settings: Paused
%set_cmd% 0012ee47-9041-4b5d-9b77-535fba8b1442 309dce9b-bef4-4119-9921-a851fb12f0f4 1

@rem Wireless Adapter Settings: Power Saving Mode
%set_cmd% 19cbb8fa-5279-450e-9fac-8a3d5fedd0c1 12bbebe6-58d6-4636-95bb-3217ef867c1a 3

@rem Sleep after: 0
%set_cmd% 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0

@rem Hibernate after: 21600
%set_cmd% 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 21600

@rem Link State Power Management: Maximum power savings
%set_cmd% 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 2

@rem Processor performance increase threshold: 100
%set_cmd% 54533251-82be-4824-96c1-47b60b740d00 06cadf0e-64ed-448a-8927-ce7bf90eb35d 100

@rem Processor performance decrease threshold: 100
%set_cmd% 54533251-82be-4824-96c1-47b60b740d00 12a0ab44-fe28-4fa9-b3bd-4b64f44960a6 100

@rem Processor performance decrease policy: Rocket
%set_cmd% 54533251-82be-4824-96c1-47b60b740d00 40fbefc7-2e9d-4d25-a185-0cfd8574bac6 0

@rem Processor idle demote threshold: 100
%set_cmd% 54533251-82be-4824-96c1-47b60b740d00 4b92d758-5a24-4851-a470-815d78aee119 100

@rem Processor idle promote threshold: 100
%set_cmd% 54533251-82be-4824-96c1-47b60b740d00 7b224883-b3cc-4d79-819f-8374152cbe7c 100

@rem Processor performance core parking overutilization threshold: 100
%set_cmd% 54533251-82be-4824-96c1-47b60b740d00 943c8cb6-6f93-4227-ad87-e9a3feec08d1 100

@rem System cooling policy: Passive
%set_cmd% 54533251-82be-4824-96c1-47b60b740d00 94d3a615-a899-4ac5-ae2b-e4d8f634367f 0

@rem Dim display after: 60
%set_cmd% 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 60

@rem Turn off display after: 120
%set_cmd% 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 120

@rem Display brightness: 40
%set_cmd% 7516b95f-f776-4464-8c53-06167f40cc99 aded5e82-b909-4619-9949-f5d71dac0bcb 40

@rem When sharing media: Allow the computer to sleep
%set_cmd% 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 03680956-93bc-4294-bba6-4e0f09bb717f 0

@rem When playing video: Optimize power savings
%set_cmd% 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 34c7b99f-9a6d-4b3c-8dc7-b6693b78cef4 2

@rem SET ACTIVE GUID
powercfg -SETACTIVE f541242f-ab56-43d1-b29a-a3f415682c5a
