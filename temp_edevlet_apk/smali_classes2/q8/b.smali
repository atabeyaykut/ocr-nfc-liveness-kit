.class public final Lq8/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq8/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lq8/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/net/Uri;

.field public final c:Landroid/net/Uri;

.field public final d:I

.field public final e:I

.field public final f:Lo8/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILs8/b;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lq8/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lq8/b;->b:Landroid/net/Uri;

    iput-object p3, p0, Lq8/b;->c:Landroid/net/Uri;

    iput p4, p0, Lq8/b;->d:I

    iput p5, p0, Lq8/b;->e:I

    iput-object p6, p0, Lq8/b;->f:Lo8/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lq8/b;->c:Landroid/net/Uri;

    const-string v1, "BitmapWorkerTask"

    const-string v2, "copyFile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lq8/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lr8/a;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lr8/a;->a(Ljava/io/Closeable;)V

    iput-object v0, p0, Lq8/b;->b:Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception p2

    move-object v1, v2

    goto :goto_1

    :cond_1
    :try_start_3
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v1, "InputStream for given input Uri is null"

    invoke-direct {p2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object p1, v1

    :goto_1
    invoke-static {v1}, Lr8/a;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lr8/a;->a(Ljava/io/Closeable;)V

    iput-object v0, p0, Lq8/b;->b:Landroid/net/Uri;

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Output Uri is null - cannot copy image"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq8/b;->c:Landroid/net/Uri;

    .line 2
    .line 3
    const-string v1, "BitmapWorkerTask"

    .line 4
    .line 5
    const-string v2, "downloadFile"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    new-instance v1, Lrc/v;

    .line 13
    .line 14
    invoke-direct {v1}, Lrc/v;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, v1, Lrc/v;->a:Lrc/l;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_0
    new-instance v4, Lrc/x$a;

    .line 21
    .line 22
    invoke-direct {v4}, Lrc/x$a;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v4, p1}, Lrc/x$a;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lrc/x$a;->a()Lrc/x;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Lrc/v;->b(Lrc/x;)Lvc/e;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lvc/e;->execute()Lrc/b0;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 44
    iget-object v1, p1, Lrc/b0;->h:Lrc/d0;

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v1}, Lrc/d0;->c()Led/g;

    .line 47
    .line 48
    .line 49
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 50
    :try_start_2
    iget-object v5, p0, Lq8/b;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    sget-object v5, Led/w;->a:Ljava/util/logging/Logger;

    .line 63
    .line 64
    new-instance v5, Led/y;

    .line 65
    .line 66
    new-instance v6, Led/k0;

    .line 67
    .line 68
    invoke-direct {v6}, Led/k0;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-direct {v5, p2, v6}, Led/y;-><init>(Ljava/io/OutputStream;Led/k0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_3
    invoke-interface {v4, v5}, Led/g;->A(Led/h0;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v5}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lrc/l;->a()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lq8/b;->b:Landroid/net/Uri;

    .line 90
    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception p2

    .line 93
    move-object v3, v5

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    :try_start_4
    new-instance p2, Ljava/lang/NullPointerException;

    .line 96
    .line 97
    const-string v1, "OutputStream for given output Uri is null"

    .line 98
    .line 99
    invoke-direct {p2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    :catchall_1
    move-exception p2

    .line 104
    :goto_0
    move-object v1, p1

    .line 105
    move-object p1, v3

    .line 106
    move-object v3, v4

    .line 107
    goto :goto_1

    .line 108
    :catchall_2
    move-exception p2

    .line 109
    move-object v1, p1

    .line 110
    move-object p1, v3

    .line 111
    goto :goto_1

    .line 112
    :catchall_3
    move-exception p1

    .line 113
    move-object p2, p1

    .line 114
    move-object p1, v3

    .line 115
    move-object v1, p1

    .line 116
    :goto_1
    invoke-static {v3}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 120
    .line 121
    .line 122
    if-eqz v1, :cond_1

    .line 123
    .line 124
    iget-object p1, v1, Lrc/b0;->h:Lrc/d0;

    .line 125
    .line 126
    invoke-static {p1}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    invoke-virtual {v2}, Lrc/l;->a()V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lq8/b;->b:Landroid/net/Uri;

    .line 133
    .line 134
    throw p2

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 136
    .line 137
    const-string p2, "Output Uri is null - cannot download image"

    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq8/b;->b:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Uri scheme: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "BitmapWorkerTask"

    .line 22
    .line 23
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string v1, "http"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v3, p0, Lq8/b;->c:Landroid/net/Uri;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    const-string v1, "https"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string v1, "content"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    :try_start_0
    iget-object v0, p0, Lq8/b;->b:Landroid/net/Uri;

    .line 54
    .line 55
    invoke-virtual {p0, v0, v3}, Lq8/b;->a(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    :goto_0
    const-string v1, "Copying failed"

    .line 63
    .line 64
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_1
    const-string v1, "file"

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "Invalid Uri scheme "

    .line 80
    .line 81
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string v2, "Invalid Uri scheme"

    .line 97
    .line 98
    invoke-static {v2, v0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lq8/b;->b:Landroid/net/Uri;

    .line 107
    .line 108
    invoke-virtual {p0, v0, v3}, Lq8/b;->b(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 109
    .line 110
    .line 111
    :goto_2
    return-void

    .line 112
    :catch_2
    move-exception v0

    .line 113
    goto :goto_3

    .line 114
    :catch_3
    move-exception v0

    .line 115
    :goto_3
    const-string v1, "Downloading failed"

    .line 116
    .line 117
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    check-cast v0, [Ljava/lang/Void;

    .line 6
    .line 7
    const-string v2, "BitmapWorkerTask"

    .line 8
    .line 9
    const-string v3, "BitmapLoadUtils"

    .line 10
    .line 11
    iget-object v0, v1, Lq8/b;->b:Landroid/net/Uri;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lq8/b$a;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string v3, "Input Uri cannot be null"

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Lq8/b$a;-><init>(Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_f

    .line 28
    .line 29
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lq8/b;->c()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 30
    .line 31
    .line 32
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .line 33
    .line 34
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    .line 40
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 41
    .line 42
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 43
    .line 44
    iget v7, v1, Lq8/b;->d:I

    .line 45
    .line 46
    iget v8, v1, Lq8/b;->e:I

    .line 47
    .line 48
    if-gt v0, v8, :cond_2

    .line 49
    .line 50
    if-le v6, v7, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v9, 0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_0
    const/4 v9, 0x1

    .line 56
    :goto_1
    div-int v10, v0, v9

    .line 57
    .line 58
    if-gt v10, v8, :cond_11

    .line 59
    .line 60
    div-int v10, v6, v9

    .line 61
    .line 62
    if-le v10, v7, :cond_3

    .line 63
    .line 64
    goto/16 :goto_c

    .line 65
    .line 66
    :cond_3
    :goto_2
    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    move-object v15, v7

    .line 73
    const/4 v8, 0x0

    .line 74
    :goto_3
    const/4 v9, 0x2

    .line 75
    const-string v10, "Bitmap could not be decoded from the Uri: ["

    .line 76
    .line 77
    iget-object v0, v1, Lq8/b;->a:Landroid/content/Context;

    .line 78
    .line 79
    const-string v11, "]"

    .line 80
    .line 81
    const/4 v12, -0x1

    .line 82
    if-nez v8, :cond_9

    .line 83
    .line 84
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v13, v1, Lq8/b;->b:Landroid/net/Uri;

    .line 89
    .line 90
    invoke-virtual {v0, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 91
    .line 92
    .line 93
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :try_start_2
    invoke-static {v13, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object v15

    .line 98
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 99
    .line 100
    if-eq v0, v12, :cond_8

    .line 101
    .line 102
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    if-ne v0, v12, :cond_4

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_4
    :try_start_3
    invoke-static {v13}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 108
    .line 109
    .line 110
    if-eqz v15, :cond_5

    .line 111
    .line 112
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    const/4 v0, 0x0

    .line 118
    :goto_4
    const/high16 v12, 0x6400000

    .line 119
    .line 120
    if-le v0, v12, :cond_6

    .line 121
    .line 122
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    .line 124
    mul-int/lit8 v0, v0, 0x2

    .line 125
    .line 126
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    goto :goto_5

    .line 130
    :cond_6
    const/4 v0, 0x0

    .line 131
    :goto_5
    if-eqz v0, :cond_7

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_7
    const/4 v8, 0x1

    .line 135
    goto :goto_3

    .line 136
    :cond_8
    :goto_6
    :try_start_4
    new-instance v0, Lq8/b$a;

    .line 137
    .line 138
    new-instance v12, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    new-instance v14, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v6, "Bounds for bitmap could not be retrieved from the Uri: ["

    .line 146
    .line 147
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v6, v1, Lq8/b;->b:Landroid/net/Uri;

    .line 151
    .line 152
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-direct {v12, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v12}, Lq8/b$a;-><init>(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    .line 167
    .line 168
    :try_start_5
    invoke-static {v13}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_f

    .line 172
    .line 173
    :catchall_0
    move-exception v0

    .line 174
    invoke-static {v13}, Lr8/a;->a(Ljava/io/Closeable;)V

    .line 175
    .line 176
    .line 177
    throw v0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v3, "doInBackground: ImageDecoder.createSource: "

    .line 180
    .line 181
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .line 183
    .line 184
    new-instance v2, Lq8/b$a;

    .line 185
    .line 186
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v5, v1, Lq8/b;->b:Landroid/net/Uri;

    .line 194
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    invoke-direct {v2, v3}, Lq8/b$a;-><init>(Ljava/lang/Exception;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_e

    .line 212
    .line 213
    :catch_1
    move-exception v0

    .line 214
    const-string v6, "doInBackground: BitmapFactory.decodeFileDescriptor: "

    .line 215
    .line 216
    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .line 218
    .line 219
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 220
    .line 221
    mul-int/lit8 v0, v0, 0x2

    .line 222
    .line 223
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 224
    .line 225
    const/4 v6, 0x0

    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :cond_9
    if-nez v15, :cond_a

    .line 229
    .line 230
    new-instance v0, Lq8/b$a;

    .line 231
    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 233
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v4, v1, Lq8/b;->b:Landroid/net/Uri;

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v2}, Lq8/b$a;-><init>(Ljava/lang/Exception;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_f

    .line 258
    .line 259
    :cond_a
    iget-object v2, v1, Lq8/b;->b:Landroid/net/Uri;

    .line 260
    .line 261
    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-nez v0, :cond_b

    .line 270
    .line 271
    const/4 v4, 0x0

    .line 272
    goto :goto_8

    .line 273
    :cond_b
    new-instance v4, Lr8/d;

    .line 274
    .line 275
    invoke-direct {v4, v0}, Lr8/d;-><init>(Ljava/io/InputStream;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4}, Lr8/d;->a()I

    .line 279
    .line 280
    .line 281
    move-result v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 282
    :try_start_7
    invoke-static {v0}, Lr8/a;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :catch_2
    move-exception v0

    .line 287
    goto :goto_7

    .line 288
    :catch_3
    move-exception v0

    .line 289
    const/4 v4, 0x0

    .line 290
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v7, "getExifOrientation: "

    .line 293
    .line 294
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .line 310
    .line 311
    :goto_8
    packed-switch v4, :pswitch_data_0

    .line 312
    .line 313
    .line 314
    const/4 v6, 0x0

    .line 315
    goto :goto_9

    .line 316
    :pswitch_0
    const/16 v6, 0x10e

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :pswitch_1
    const/16 v6, 0x5a

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :pswitch_2
    const/16 v6, 0xb4

    .line 323
    .line 324
    :goto_9
    if-eq v4, v9, :cond_c

    .line 325
    .line 326
    const/4 v0, 0x7

    .line 327
    if-eq v4, v0, :cond_c

    .line 328
    .line 329
    const/4 v0, 0x4

    .line 330
    if-eq v4, v0, :cond_c

    .line 331
    .line 332
    const/4 v0, 0x5

    .line 333
    if-eq v4, v0, :cond_c

    .line 334
    .line 335
    const/4 v12, 0x1

    .line 336
    :cond_c
    new-instance v2, Lp8/c;

    .line 337
    .line 338
    invoke-direct {v2, v4, v6, v12}, Lp8/c;-><init>(III)V

    .line 339
    .line 340
    .line 341
    new-instance v14, Landroid/graphics/Matrix;

    .line 342
    .line 343
    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 344
    .line 345
    .line 346
    if-eqz v6, :cond_d

    .line 347
    .line 348
    int-to-float v0, v6

    .line 349
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 350
    .line 351
    .line 352
    :cond_d
    if-eq v12, v5, :cond_e

    .line 353
    .line 354
    int-to-float v0, v12

    .line 355
    const/high16 v4, 0x3f800000    # 1.0f

    .line 356
    .line 357
    invoke-virtual {v14, v0, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 358
    .line 359
    .line 360
    :cond_e
    invoke-virtual {v14}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_10

    .line 365
    .line 366
    new-instance v4, Lq8/b$a;

    .line 367
    .line 368
    const/4 v10, 0x0

    .line 369
    const/4 v11, 0x0

    .line 370
    :try_start_8
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    .line 371
    .line 372
    .line 373
    move-result v12

    .line 374
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    .line 375
    .line 376
    .line 377
    move-result v13
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_5

    .line 378
    const/4 v0, 0x1

    .line 379
    move-object v9, v15

    .line 380
    move-object v7, v15

    .line 381
    move v15, v0

    .line 382
    :try_start_9
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 383
    .line 384
    .line 385
    move-result-object v15

    .line 386
    invoke-virtual {v7, v15}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    .line 387
    .line 388
    .line 389
    move-result v0
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    .line 390
    if-nez v0, :cond_f

    .line 391
    .line 392
    goto :goto_b

    .line 393
    :catch_4
    move-exception v0

    .line 394
    goto :goto_a

    .line 395
    :catch_5
    move-exception v0

    .line 396
    move-object v7, v15

    .line 397
    :goto_a
    const-string v5, "transformBitmap: "

    .line 398
    .line 399
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .line 401
    .line 402
    :cond_f
    move-object v15, v7

    .line 403
    :goto_b
    invoke-direct {v4, v15, v2}, Lq8/b$a;-><init>(Landroid/graphics/Bitmap;Lp8/c;)V

    .line 404
    .line 405
    .line 406
    move-object v0, v4

    .line 407
    goto :goto_f

    .line 408
    :cond_10
    move-object v7, v15

    .line 409
    new-instance v0, Lq8/b$a;

    .line 410
    .line 411
    invoke-direct {v0, v7, v2}, Lq8/b$a;-><init>(Landroid/graphics/Bitmap;Lp8/c;)V

    .line 412
    .line 413
    .line 414
    goto :goto_f

    .line 415
    :cond_11
    :goto_c
    mul-int/lit8 v9, v9, 0x2

    .line 416
    .line 417
    goto/16 :goto_1

    .line 418
    .line 419
    :catch_6
    move-exception v0

    .line 420
    goto :goto_d

    .line 421
    :catch_7
    move-exception v0

    .line 422
    :goto_d
    new-instance v2, Lq8/b$a;

    .line 423
    .line 424
    invoke-direct {v2, v0}, Lq8/b$a;-><init>(Ljava/lang/Exception;)V

    .line 425
    .line 426
    .line 427
    :goto_e
    move-object v0, v2

    .line 428
    :goto_f
    return-object v0

    .line 429
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lq8/b$a;

    .line 2
    .line 3
    iget-object v0, p1, Lq8/b$a;->c:Ljava/lang/Exception;

    .line 4
    .line 5
    iget-object v1, p0, Lq8/b;->f:Lo8/b;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lq8/b;->b:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lq8/b;->c:Landroid/net/Uri;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    check-cast v1, Ls8/b;

    .line 26
    .line 27
    iget-object v1, v1, Ls8/b;->a:Ls8/c;

    .line 28
    .line 29
    iput-object v0, v1, Ls8/c;->n:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v2, v1, Ls8/c;->p:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v0, p1, Lq8/b$a;->b:Lp8/c;

    .line 34
    .line 35
    iput-object v0, v1, Ls8/c;->q:Lp8/c;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, v1, Ls8/c;->k:Z

    .line 39
    .line 40
    iget-object p1, p1, Lq8/b$a;->a:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ls8/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    check-cast v1, Ls8/b;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string p1, "TransformImageView"

    .line 52
    .line 53
    const-string v2, "onFailure: setImageUri"

    .line 54
    .line 55
    invoke-static {p1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    iget-object p1, v1, Ls8/b;->a:Ls8/c;

    .line 59
    .line 60
    iget-object p1, p1, Ls8/c;->g:Ls8/c$a;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    check-cast p1, Lcom/yalantis/ucrop/UCropActivity$a;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCropActivity;->t(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    return-void
.end method
