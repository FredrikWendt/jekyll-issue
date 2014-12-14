---
layout: post
title: Maven In Project Repo
tags: maven
lang: sv
cross-post-url: http://blog.squeed.com/2014/05/maven-in-project-repo/
---

Till den dag då alla maven-byggen ersatts med Gradle (eller annat) kan denna lilla snippet visa sig användbar: vi hade en jar-fil som inte fanns tillgängligt i något publik maven-repo. Hur får man denna att användas av Maven på ett enkelt sätt?

```xml
<project ...>
  <repositories>
    <repository>
      <id>in-project-repository</id>
      <name>In Project Repository</name>
      <url>file://${project.basedir}/lib</url>
    </repository>
  </repositorie>
</project>
```

Detta ihop med den klassiska [file-install](http://maven.apache.org/plugins/maven-install-plugin/install-file-mojo.html) - alltså `mvn install:file-install ... -DlocalRepositoryPath=lib` så kom vi vidare och fick ett någorlunda mer self-contained bygge.
