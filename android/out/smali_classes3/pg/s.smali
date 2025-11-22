.class public final Lpg/s;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;)V
    .locals 0

    iput-object p1, p0, Lpg/s;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lpg/s;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 2
    .line 3
    :try_start_0
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->s0:I

    .line 4
    .line 5
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->E()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const-string v2, "extra_download_id"

    .line 13
    .line 14
    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x0

    .line 24
    :goto_0
    const-string v2, "download"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "null cannot be cast to non-null type android.app.DownloadManager"

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast v2, Landroid/app/DownloadManager;

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    cmp-long v5, v3, v0

    .line 44
    .line 45
    if-eqz v5, :cond_3

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-virtual {v2, v0, v1}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Landroid/app/DownloadManager$Query;

    .line 56
    .line 57
    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    new-array v3, v3, [J

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    const/4 p2, 0x0

    .line 68
    aput-wide v4, v3, p2

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const-string v1, "dm.query(myDownloadQuery)"

    .line 78
    .line 79
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    const-string v1, "local_uri"

    .line 89
    .line 90
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v2, "cursor.getString(cursor.\u2026anager.COLUMN_LOCAL_URI))"

    .line 99
    .line 100
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v2, "file://"

    .line 104
    .line 105
    const-string v3, ""

    .line 106
    .line 107
    invoke-static {v1, v2, v3}, Lmc/j;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v2, Ljava/io/File;

    .line 112
    .line 113
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    const-string v1, "mimeType"

    .line 123
    .line 124
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v2, v0}, Lpg/c;->b(Lu8/a;Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->H()V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catch_0
    sget p2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->s0:I

    .line 139
    .line 140
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->H()V

    .line 141
    .line 142
    .line 143
    :cond_3
    :goto_2
    return-void
.end method
