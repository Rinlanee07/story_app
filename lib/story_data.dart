final Map<String, dynamic> storyData = {
  'start': {
    'text': 'คุณตื่นขึ้นมาในป่าลึกลับ... จะทำอย่างไรต่อ?',
    'choices': [
      {'label': 'เดินเข้าไปในป่า', 'next': 'forest'},
      {'label': 'นั่งรอความช่วยเหลือ', 'next': 'wait'},
    ]
  },
  'forest': {
    'text': 'คุณเดินเข้าไปในป่าและได้ยินเสียงประหลาด...',
    'choices': [
      {'label': 'วิ่งหนี', 'next': 'ending_good'},
      {'label': 'ซ่อนตัว', 'next': 'ending_bad'}
    ]
  },
  'wait': {
    'text': 'คุณนั่งรอจนรู้สึกหิว...',
    'choices': [
      {'label': 'ลุกขึ้นและออกเดินหาอาหาร', 'next': 'forest'},
    ]
  },
};
