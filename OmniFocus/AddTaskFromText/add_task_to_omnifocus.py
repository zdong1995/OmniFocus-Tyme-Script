from urllib import quote
import webbrowser

with open("/Users/zdong1995/Desktop/Tasks.taskpaper") as f:
    files = f.readlines()

i = 0

while i < len(files):
    if files[i] is '\n':
        i += 1
    # find one project line starting from
    projectName = quote(files[i][:-2]) # need to remove the ':\n' at the end of project line
    i += 1
    content = ''
    while i < len(files) and not (files[i] is '\n' or files[i][0].isalpha()):
        content += files[i]
        i += 1
    url = "omnifocus:///paste?target=/task/" + projectName +  "&content=" + quote(content)
    print(url)
    webbrowser.open(url)