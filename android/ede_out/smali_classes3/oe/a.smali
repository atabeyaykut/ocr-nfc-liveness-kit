.class public final Loe/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)Landroid/content/Intent;
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getConfigPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getLink()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getServiceName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getBaseUrlCode()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;->getBaseUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-static {v1}, La6/a;->r(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    invoke-static {v3}, La6/a;->q(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    new-instance p0, Landroid/content/Intent;

    .line 55
    .line 56
    const-string v0, "action.mobile.accident"

    .line 57
    .line 58
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "isCallingFromLogin"

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v1, 0x22

    .line 70
    .line 71
    if-lt v0, v1, :cond_2

    .line 72
    .line 73
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    const/4 v9, 0x0

    .line 90
    move v2, p0

    .line 91
    invoke-static/range {v1 .. v9}, Lze/a;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZ)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 p0, 0x0

    .line 97
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final b(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;IZ)Landroid/content/Intent;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getBaseUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    move v2, p1

    move v6, p2

    invoke-static/range {v1 .. v9}, Lze/a;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZ)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final c(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Z)Landroid/content/Intent;
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getConfigPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getLink()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getBaseUrlCode()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getBaseUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-static {v1}, La6/a;->r(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    invoke-static {v3}, La6/a;->q(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    new-instance p0, Landroid/content/Intent;

    .line 55
    .line 56
    const-string p1, "action.mobile.accident"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p1, "isCallingFromLogin"

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v0, 0x22

    .line 70
    .line 71
    if-lt p1, v0, :cond_2

    .line 72
    .line 73
    const-string p1, "tr.gov.turkiye.edevlet.kapisi"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    const/4 v6, 0x1

    .line 84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    const/4 v9, 0x0

    .line 89
    move v2, p0

    .line 90
    move v5, p1

    .line 91
    invoke-static/range {v1 .. v9}, Lze/a;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZ)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 p0, 0x0

    .line 97
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final d(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;IZ)Landroid/content/Intent;
    .locals 9

    const/4 v5, 0x0

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceFolderNameEng()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceFolderNameEng()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceFolderName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz p2, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceNameEng()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_4
    if-nez v0, :cond_7

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceNameEng()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    :goto_5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceName()Ljava/lang/String;

    move-result-object p2

    :goto_6
    move-object v3, p2

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getServiceURL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getBaseUrlCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move-object v0, v2

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lze/a;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZ)Landroid/content/Intent;

    move-result-object p0

    goto :goto_7

    :cond_8
    const/4 p0, 0x0

    :goto_7
    return-object p0
.end method
