{"filter":false,"title":"index.json.jbuilder","tooltip":"/app/views/events/index.json.jbuilder","undoManager":{"mark":4,"position":4,"stack":[[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":42},"end":{"row":3,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":3,"column":0},"end":{"row":3,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":3,"column":2},"end":{"row":3,"column":48}},"text":"json.extract! event, :id, :title, :description"},{"action":"insertText","range":{"start":{"row":3,"column":48},"end":{"row":4,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":4,"column":0},"end":{"row":6,"column":0}},"lines":["  json.start event.start_time","  json.end event.end_time"]},{"action":"insertText","range":{"start":{"row":6,"column":0},"end":{"row":6,"column":42}},"text":"  json.url event_url(event, format: :html)"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":0},"end":{"row":2,"column":42}},"text":"  json.url event_url(event, format: :json)"},{"action":"removeText","range":{"start":{"row":1,"column":2},"end":{"row":1,"column":72}},"text":"json.extract! event, :id, :title, :description, :start_time, :end_time"},{"action":"removeText","range":{"start":{"row":1,"column":2},"end":{"row":2,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":1,"column":0},"end":{"row":1,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":0,"column":31},"end":{"row":1,"column":0}},"text":"\n"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":42},"end":{"row":4,"column":42},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1406897997714,"hash":"b5aae567a63f0c39c90afffd339d41b526ea47de"}