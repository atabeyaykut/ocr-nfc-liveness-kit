.class public final Lxc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwc/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc/b$e;,
        Lxc/b$b;,
        Lxc/b$a;,
        Lxc/b$d;,
        Lxc/b$c;,
        Lxc/b$f;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Lxc/a;

.field public c:Lrc/q;

.field public final d:Lrc/v;

.field public final e:Lvc/i;

.field public final f:Led/g;

.field public final g:Led/f;


# direct methods
.method public constructor <init>(Lrc/v;Lvc/i;Led/g;Led/f;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc/b;->d:Lrc/v;

    iput-object p2, p0, Lxc/b;->e:Lvc/i;

    iput-object p3, p0, Lxc/b;->f:Led/g;

    iput-object p4, p0, Lxc/b;->g:Led/f;

    new-instance p1, Lxc/a;

    invoke-direct {p1, p3}, Lxc/a;-><init>(Led/g;)V

    iput-object p1, p0, Lxc/b;->b:Lxc/a;

    return-void
.end method

.method public static final i(Lxc/b;Led/o;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Led/o;->e:Led/k0;

    .line 5
    .line 6
    sget-object v0, Led/k0;->d:Led/k0$a;

    .line 7
    .line 8
    const-string v1, "delegate"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p1, Led/o;->e:Led/k0;

    .line 14
    .line 15
    invoke-virtual {p0}, Led/k0;->a()Led/k0;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Led/k0;->b()Led/k0;

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lxc/b;->g:Led/f;

    invoke-interface {v0}, Led/f;->flush()V

    return-void
.end method

.method public final b(Lrc/x;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lxc/b;->e:Lvc/i;

    .line 2
    .line 3
    iget-object v0, v0, Lvc/i;->q:Lrc/e0;

    .line 4
    .line 5
    iget-object v0, v0, Lrc/e0;->b:Ljava/net/Proxy;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "connection.route().proxy.type()"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p1, Lrc/x;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x20

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Lrc/x;->b:Lrc/r;

    .line 32
    .line 33
    iget-boolean v3, v2, Lrc/r;->a:Z

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 38
    .line 39
    if-ne v0, v3, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v2}, Lrc/r;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v2}, Lrc/r;->d()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/16 v0, 0x3f

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :goto_1
    const-string v0, " HTTP/1.1"

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p1, Lrc/x;->d:Lrc/q;

    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Lxc/b;->k(Lrc/q;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final c(Z)Lrc/b0$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lxc/b;->b:Lxc/a;

    .line 2
    .line 3
    iget v1, p0, Lxc/b;->a:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v1, v3, :cond_1

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    .line 14
    .line 15
    :try_start_0
    iget-object v1, v0, Lxc/a;->b:Led/g;

    .line 16
    .line 17
    iget-wide v3, v0, Lxc/a;->a:J

    .line 18
    .line 19
    invoke-interface {v1, v3, v4}, Led/g;->N(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-wide v3, v0, Lxc/a;->a:J

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    int-to-long v5, v5

    .line 30
    sub-long/2addr v3, v5

    .line 31
    iput-wide v3, v0, Lxc/a;->a:J

    .line 32
    .line 33
    invoke-static {v1}, Lwc/i$a;->a(Ljava/lang/String;)Lwc/i;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    iget v3, v1, Lwc/i;->b:I

    .line 38
    .line 39
    :try_start_1
    new-instance v4, Lrc/b0$a;

    .line 40
    .line 41
    invoke-direct {v4}, Lrc/b0$a;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v5, v1, Lwc/i;->a:Lrc/w;

    .line 45
    .line 46
    const-string v6, "protocol"

    .line 47
    .line 48
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object v5, v4, Lrc/b0$a;->b:Lrc/w;

    .line 52
    .line 53
    iput v3, v4, Lrc/b0$a;->c:I

    .line 54
    .line 55
    iget-object v1, v1, Lwc/i;->c:Ljava/lang/String;

    .line 56
    .line 57
    const-string v5, "message"

    .line 58
    .line 59
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, v4, Lrc/b0$a;->d:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0}, Lxc/a;->a()Lrc/q;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lrc/q;->u()Lrc/q$a;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, v4, Lrc/b0$a;->f:Lrc/q$a;

    .line 73
    .line 74
    const/16 v0, 0x64

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    if-ne v3, v0, :cond_2

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    if-ne v3, v0, :cond_3

    .line 83
    .line 84
    iput v2, p0, Lxc/b;->a:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 p1, 0x4

    .line 88
    iput p1, p0, Lxc/b;->a:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    :goto_1
    return-object v4

    .line 91
    :catch_0
    move-exception p1

    .line 92
    iget-object v0, p0, Lxc/b;->e:Lvc/i;

    .line 93
    .line 94
    iget-object v0, v0, Lvc/i;->q:Lrc/e0;

    .line 95
    .line 96
    iget-object v0, v0, Lrc/e0;->a:Lrc/a;

    .line 97
    .line 98
    iget-object v0, v0, Lrc/a;->a:Lrc/r;

    .line 99
    .line 100
    invoke-virtual {v0}, Lrc/r;->f()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Ljava/io/IOException;

    .line 105
    .line 106
    const-string v2, "unexpected end of stream on "

    .line 107
    .line 108
    invoke-static {v2, v0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v0, "state: "

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v0, p0, Lxc/b;->a:I

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxc/b;->e:Lvc/i;

    .line 2
    .line 3
    iget-object v0, v0, Lvc/i;->b:Ljava/net/Socket;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lsc/c;->d(Ljava/net/Socket;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d()Lvc/i;
    .locals 1

    iget-object v0, p0, Lxc/b;->e:Lvc/i;

    return-object v0
.end method

.method public final e(Lrc/b0;)J
    .locals 2

    .line 1
    invoke-static {p1}, Lwc/e;->a(Lrc/b0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "Transfer-Encoding"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lrc/b0;->b(Lrc/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "chunked"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-wide/16 v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1}, Lsc/c;->j(Lrc/b0;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :goto_0
    return-wide v0
.end method

.method public final f(Lrc/x;J)Led/h0;
    .locals 6

    .line 1
    iget-object p1, p1, Lrc/x;->d:Lrc/q;

    .line 2
    .line 3
    const-string v0, "Transfer-Encoding"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "chunked"

    .line 10
    .line 11
    invoke-static {v0, p1}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x2

    .line 18
    const-string v3, "state: "

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget p1, p0, Lxc/b;->a:I

    .line 23
    .line 24
    if-ne p1, v1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iput v2, p0, Lxc/b;->a:I

    .line 30
    .line 31
    new-instance p1, Lxc/b$b;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lxc/b$b;-><init>(Lxc/b;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget p2, p0, Lxc/b;->a:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p2

    .line 61
    :cond_2
    const-wide/16 v4, -0x1

    .line 62
    .line 63
    cmp-long p1, p2, v4

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    iget p1, p0, Lxc/b;->a:I

    .line 68
    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    :cond_3
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iput v2, p0, Lxc/b;->a:I

    .line 75
    .line 76
    new-instance p1, Lxc/b$e;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lxc/b$e;-><init>(Lxc/b;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-object p1

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget p2, p0, Lxc/b;->a:I

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p2

    .line 106
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    .line 109
    .line 110
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lxc/b;->g:Led/f;

    invoke-interface {v0}, Led/f;->flush()V

    return-void
.end method

.method public final h(Lrc/b0;)Led/j0;
    .locals 10

    .line 1
    invoke-static {p1}, Lwc/e;->a(Lrc/b0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lxc/b;->j(J)Lxc/b$d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "Transfer-Encoding"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lrc/b0;->b(Lrc/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "chunked"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x5

    .line 28
    const-string v3, "state: "

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x4

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object p1, p1, Lrc/b0;->b:Lrc/x;

    .line 35
    .line 36
    iget-object p1, p1, Lrc/x;->b:Lrc/r;

    .line 37
    .line 38
    iget v0, p0, Lxc/b;->a:I

    .line 39
    .line 40
    if-ne v0, v5, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iput v2, p0, Lxc/b;->a:I

    .line 46
    .line 47
    new-instance v0, Lxc/b$c;

    .line 48
    .line 49
    invoke-direct {v0, p0, p1}, Lxc/b$c;-><init>(Lxc/b;Lrc/r;)V

    .line 50
    .line 51
    .line 52
    move-object p1, v0

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lxc/b;->a:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_3
    invoke-static {p1}, Lsc/c;->j(Lrc/b0;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    const-wide/16 v8, -0x1

    .line 83
    .line 84
    cmp-long p1, v6, v8

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0, v6, v7}, Lxc/b;->j(J)Lxc/b$d;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    iget p1, p0, Lxc/b;->a:I

    .line 94
    .line 95
    if-ne p1, v5, :cond_5

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    :cond_5
    if-eqz v1, :cond_6

    .line 99
    .line 100
    iput v2, p0, Lxc/b;->a:I

    .line 101
    .line 102
    iget-object p1, p0, Lxc/b;->e:Lvc/i;

    .line 103
    .line 104
    invoke-virtual {p1}, Lvc/i;->l()V

    .line 105
    .line 106
    .line 107
    new-instance p1, Lxc/b$f;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Lxc/b$f;-><init>(Lxc/b;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-object p1

    .line 113
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v0, p0, Lxc/b;->a:I

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0
.end method

.method public final j(J)Lxc/b$d;
    .locals 2

    iget v0, p0, Lxc/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lxc/b;->a:I

    new-instance v0, Lxc/b$d;

    invoke-direct {v0, p0, p1, p2}, Lxc/b$d;-><init>(Lxc/b;J)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lxc/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final k(Lrc/q;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "headers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "requestLine"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lxc/b;->a:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lxc/b;->g:Led/f;

    .line 23
    .line 24
    invoke-interface {v0, p2}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v3, "\r\n"

    .line 29
    .line 30
    invoke-interface {p2, v3}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 31
    .line 32
    .line 33
    iget-object p2, p1, Lrc/q;->a:[Ljava/lang/String;

    .line 34
    .line 35
    array-length p2, p2

    .line 36
    div-int/lit8 p2, p2, 0x2

    .line 37
    .line 38
    :goto_1
    if-ge v1, p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lrc/q;->o(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v0, v4}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, ": "

    .line 49
    .line 50
    invoke-interface {v4, v5}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p1, v1}, Lrc/q;->w(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v4, v5}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v4, v3}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-interface {v0, v3}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 69
    .line 70
    .line 71
    iput v2, p0, Lxc/b;->a:I

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string p2, "state: "

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget p2, p0, Lxc/b;->a:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p2
.end method
