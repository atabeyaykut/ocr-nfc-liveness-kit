.class public final Lvc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvc/c$a;,
        Lvc/c$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lvc/i;

.field public final c:Lvc/e;

.field public final d:Lrc/n;

.field public final e:Lvc/d;

.field public final f:Lwc/d;


# direct methods
.method public constructor <init>(Lvc/e;Lrc/n;Lvc/d;Lwc/d;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc/c;->c:Lvc/e;

    iput-object p2, p0, Lvc/c;->d:Lrc/n;

    iput-object p3, p0, Lvc/c;->e:Lvc/d;

    iput-object p4, p0, Lvc/c;->f:Lwc/d;

    invoke-interface {p4}, Lwc/d;->d()Lvc/i;

    move-result-object p1

    iput-object p1, p0, Lvc/c;->b:Lvc/i;

    return-void
.end method


# virtual methods
.method public final a(ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lvc/c;->c(Ljava/io/IOException;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    const-string v0, "call"

    .line 7
    .line 8
    iget-object v1, p0, Lvc/c;->d:Lrc/n;

    .line 9
    .line 10
    iget-object v2, p0, Lvc/c;->c:Lvc/e;

    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 27
    .line 28
    if-eqz p3, :cond_3

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_4
    :goto_1
    invoke-virtual {v2, p0, p2, p1, p3}, Lvc/e;->g(Lvc/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final b(Z)Lrc/b0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lvc/c;->f:Lwc/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lwc/d;->c(Z)Lrc/b0$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p0, p1, Lrc/b0$a;->m:Lvc/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    :cond_0
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lvc/c;->d:Lrc/n;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v0, "call"

    .line 19
    .line 20
    iget-object v1, p0, Lvc/c;->c:Lvc/e;

    .line 21
    .line 22
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lvc/c;->c(Ljava/io/IOException;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lvc/c;->e:Lvc/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lvc/d;->c(Ljava/io/IOException;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lvc/c;->f:Lwc/d;

    .line 7
    .line 8
    invoke-interface {v0}, Lwc/d;->d()Lvc/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lvc/c;->c:Lvc/e;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    const-string v2, "call"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    instance-of v2, p1, Lyc/w;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    move-object v2, p1

    .line 26
    check-cast v2, Lyc/w;

    .line 27
    .line 28
    iget-object v2, v2, Lyc/w;->a:Lyc/b;

    .line 29
    .line 30
    sget-object v4, Lyc/b;->f:Lyc/b;

    .line 31
    .line 32
    if-ne v2, v4, :cond_1

    .line 33
    .line 34
    iget p1, v0, Lvc/i;->m:I

    .line 35
    .line 36
    add-int/2addr p1, v3

    .line 37
    iput p1, v0, Lvc/i;->m:I

    .line 38
    .line 39
    if-le p1, v3, :cond_5

    .line 40
    .line 41
    :cond_0
    iput-boolean v3, v0, Lvc/i;->i:Z

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    check-cast p1, Lyc/w;

    .line 45
    .line 46
    iget-object p1, p1, Lyc/w;->a:Lyc/b;

    .line 47
    .line 48
    sget-object v2, Lyc/b;->g:Lyc/b;

    .line 49
    .line 50
    if-ne p1, v2, :cond_0

    .line 51
    .line 52
    iget-boolean p1, v1, Lvc/e;->n:Z

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object v2, v0, Lvc/i;->f:Lyc/f;

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v2, 0x0

    .line 64
    :goto_0
    if-eqz v2, :cond_4

    .line 65
    .line 66
    instance-of v2, p1, Lyc/a;

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    :cond_4
    iput-boolean v3, v0, Lvc/i;->i:Z

    .line 71
    .line 72
    iget v2, v0, Lvc/i;->l:I

    .line 73
    .line 74
    if-nez v2, :cond_5

    .line 75
    .line 76
    iget-object v1, v1, Lvc/e;->r:Lrc/v;

    .line 77
    .line 78
    iget-object v2, v0, Lvc/i;->q:Lrc/e0;

    .line 79
    .line 80
    invoke-static {v1, v2, p1}, Lvc/i;->d(Lrc/v;Lrc/e0;Ljava/io/IOException;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    iget p1, v0, Lvc/i;->k:I

    .line 84
    .line 85
    add-int/2addr p1, v3

    .line 86
    iput p1, v0, Lvc/i;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    :cond_5
    :goto_2
    monitor-exit v0

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0

    .line 92
    throw p1
.end method
