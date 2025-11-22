.class public final Lb1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv0/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly0/b;


# direct methods
.method public constructor <init>(Ly0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/u;->a:Ly0/b;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/io/File;Lv0/h;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    const-string p3, "StreamEncoder"

    .line 4
    .line 5
    const-class v0, [B

    .line 6
    .line 7
    const/high16 v1, 0x10000

    .line 8
    .line 9
    iget-object v2, p0, Lb1/u;->a:Ly0/b;

    .line 10
    .line 11
    invoke-interface {v2, v0, v1}, Ly0/b;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [B

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 20
    .line 21
    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v3, -0x1

    .line 29
    if-eq p2, v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    invoke-interface {v2, v0}, Ly0/b;->put(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_4

    .line 48
    :catch_1
    move-exception p1

    .line 49
    move-object v3, v4

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :catch_2
    move-exception p1

    .line 54
    :goto_1
    const/4 p2, 0x3

    .line 55
    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    const-string p2, "Failed to encode data onto the OutputStream"

    .line 62
    .line 63
    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    .line 65
    .line 66
    :cond_1
    if-eqz v3, :cond_2

    .line 67
    .line 68
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 69
    .line 70
    .line 71
    :catch_3
    :cond_2
    invoke-interface {v2, v0}, Ly0/b;->put(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    return v1

    .line 75
    :goto_3
    move-object v4, v3

    .line 76
    :goto_4
    if-eqz v4, :cond_3

    .line 77
    .line 78
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 79
    .line 80
    .line 81
    :catch_4
    :cond_3
    invoke-interface {v2, v0}, Ly0/b;->put(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method
