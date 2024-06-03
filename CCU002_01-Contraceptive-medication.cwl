cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-contraceptive-medication-ethinylest---primary:
    run: ccu002_01-contraceptive-medication-ethinylest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  ccu002_01-contraceptive-medication-500microgram---primary:
    run: ccu002_01-contraceptive-medication-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-ethinylest---primary/output
  ccu002_01-contraceptive-medication-003mg---primary:
    run: ccu002_01-contraceptive-medication-003mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-500microgram---primary/output
  ccu002_01-contraceptive-medication-002mg---primary:
    run: ccu002_01-contraceptive-medication-002mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-003mg---primary/output
  ccu002_01-contraceptive-medication-tablet---primary:
    run: ccu002_01-contraceptive-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-002mg---primary/output
  ccu002_01-contraceptive-medication-levest---primary:
    run: ccu002_01-contraceptive-medication-levest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-tablet---primary/output
  ccu002_01-contraceptive-medication-loestrin---primary:
    run: ccu002_01-contraceptive-medication-loestrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-levest---primary/output
  ccu002_01-contraceptive-medication-qlaira---primary:
    run: ccu002_01-contraceptive-medication-qlaira---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-loestrin---primary/output
  ccu002_01-contraceptive-medication-femodene---primary:
    run: ccu002_01-contraceptive-medication-femodene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-qlaira---primary/output
  ccu002_01-contraceptive-medication-logynon---primary:
    run: ccu002_01-contraceptive-medication-logynon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-femodene---primary/output
  ccu002_01-contraceptive-medication-0015mg---primary:
    run: ccu002_01-contraceptive-medication-0015mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-logynon---primary/output
  ccu002_01-contraceptive-medication-acetate---primary:
    run: ccu002_01-contraceptive-medication-acetate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-0015mg---primary/output
  ccu002_01-contraceptive-medication-microgynon---primary:
    run: ccu002_01-contraceptive-medication-microgynon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-acetate---primary/output
  ccu002_01-contraceptive-medication-35microgram---primary:
    run: ccu002_01-contraceptive-medication-35microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-microgynon---primary/output
  ccu002_01-contraceptive-medication---primary:
    run: ccu002_01-contraceptive-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication-35microgram---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_01-contraceptive-medication---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
