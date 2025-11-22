.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;",
        ">;>;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment$onCreate$6"
    f = "MobileAccidentCompletedReportFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    invoke-direct {v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V

    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lr0/b;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lr0/b;

    .line 7
    .line 8
    instance-of v0, p1, Lr0/d1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lr0/k;

    .line 16
    .line 17
    :goto_0
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$j;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 22
    .line 23
    if-eqz p1, :cond_7

    .line 24
    .line 25
    invoke-virtual {p1}, Lv/e;->show()V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_1
    instance-of v0, p1, Lr0/c1;

    .line 31
    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 39
    .line 40
    .line 41
    :cond_2
    :try_start_0
    check-cast p1, Lr0/c1;

    .line 42
    .line 43
    iget-object p1, p1, Lr0/c1;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 46
    .line 47
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;

    .line 52
    .line 53
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;->getDownloadCompletedReportData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportData;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x0

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportData;->getDownloadFile()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportFile;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportFile;->getDownloadCompletedReportMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportMap;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportMap;->getDownloadCompletedReportSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportSubData;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportSubData;->getMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportInfo;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportInfo;->getContent()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move-object p1, v0

    .line 90
    :goto_1
    const/4 v3, 0x0

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const/4 v4, 0x0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    const/4 v4, 0x1

    .line 103
    :goto_3
    if-nez v4, :cond_7

    .line 104
    .line 105
    const v4, 0x7f1300a0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const-string v5, "getString(R.string.filename_pdf)"

    .line 113
    .line 114
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v5, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->h:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    const-string v6, "content"

    .line 123
    .line 124
    invoke-static {p1, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Lje/a;->a(Ljava/lang/String;)[B

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 132
    .line 133
    .line 134
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    goto :goto_5

    .line 141
    :catch_0
    const/4 v1, 0x0

    .line 142
    :goto_4
    :try_start_2
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    :try_start_3
    invoke-static {v5, v0}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->h:Landroid/content/Context;

    .line 150
    .line 151
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p1, v4}, Lgh/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :goto_5
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    :try_start_5
    invoke-static {v5, p1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 164
    :cond_6
    instance-of v0, p1, Lr0/i;

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    check-cast p1, Lr0/i;

    .line 169
    .line 170
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 171
    .line 172
    invoke-static {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    :catch_1
    :cond_7
    :goto_6
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 176
    .line 177
    return-object p1
.end method
