.class public final Lm7/m;
.super Lj7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj7/u<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lj7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lj7/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lj7/h;

.field public final d:Lp7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lj7/v;

.field public f:Lj7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/u<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj7/r;Lj7/k;Lj7/h;Lp7/a;)V
    .locals 1

    invoke-direct {p0}, Lj7/u;-><init>()V

    new-instance v0, Lm7/m$a;

    invoke-direct {v0}, Lm7/m$a;-><init>()V

    iput-object p1, p0, Lm7/m;->a:Lj7/r;

    iput-object p2, p0, Lm7/m;->b:Lj7/k;

    iput-object p3, p0, Lm7/m;->c:Lj7/h;

    iput-object p4, p0, Lm7/m;->d:Lp7/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lm7/m;->e:Lj7/v;

    return-void
.end method


# virtual methods
.method public final a(Lq7/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/m;->d:Lp7/a;

    .line 2
    .line 3
    iget-object v1, p0, Lm7/m;->b:Lj7/k;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lm7/m;->f:Lj7/u;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lm7/m;->e:Lj7/v;

    .line 13
    .line 14
    iget-object v2, p0, Lm7/m;->c:Lj7/h;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v0}, Lj7/h;->c(Lj7/v;Lp7/a;)Lj7/u;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lm7/m;->f:Lj7/u;

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v1, p1}, Lj7/u;->a(Lq7/a;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lq7/a;->B()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lq7/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    .line 29
    .line 30
    :try_start_1
    sget-object v2, Lm7/o;->A:Lm7/o$u;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lm7/o$u;->c(Lq7/a;)Lj7/l;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lq7/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    goto :goto_2

    .line 40
    :catch_0
    move-exception p1

    .line 41
    const/4 v2, 0x0

    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception p1

    .line 44
    new-instance v0, Lj7/s;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lj7/s;-><init>(Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :catch_2
    move-exception p1

    .line 51
    new-instance v0, Lj7/m;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lj7/m;-><init>(Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :catch_3
    move-exception p1

    .line 58
    new-instance v0, Lj7/s;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lj7/s;-><init>(Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :catch_4
    move-exception p1

    .line 65
    const/4 v2, 0x1

    .line 66
    :goto_1
    if-eqz v2, :cond_3

    .line 67
    .line 68
    sget-object p1, Lj7/n;->a:Lj7/n;

    .line 69
    .line 70
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    instance-of p1, p1, Lj7/n;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    return-object p1

    .line 79
    :cond_2
    iget-object p1, v0, Lp7/a;->b:Ljava/lang/reflect/Type;

    .line 80
    .line 81
    invoke-interface {v1}, Lj7/k;->a()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_3
    new-instance v0, Lj7/s;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Lj7/s;-><init>(Ljava/lang/Exception;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public final b(Lq7/b;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/b;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/m;->d:Lp7/a;

    .line 2
    .line 3
    iget-object v1, p0, Lm7/m;->a:Lj7/r;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lm7/m;->f:Lj7/u;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lm7/m;->e:Lj7/v;

    .line 13
    .line 14
    iget-object v2, p0, Lm7/m;->c:Lj7/h;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v0}, Lj7/h;->c(Lj7/v;Lp7/a;)Lj7/u;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lm7/m;->f:Lj7/u;

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v1, p1, p2}, Lj7/u;->b(Lq7/b;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    if-nez p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lq7/b;->j()Lq7/b;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object p2, v0, Lp7/a;->b:Ljava/lang/reflect/Type;

    .line 33
    .line 34
    invoke-interface {v1}, Lj7/r;->a()Lj7/l;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    sget-object v0, Lm7/o;->A:Lm7/o$u;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Lm7/o$u;->b(Lq7/b;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
