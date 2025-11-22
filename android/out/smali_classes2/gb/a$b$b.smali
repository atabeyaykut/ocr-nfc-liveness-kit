.class public final Lgb/a$b$b;
.super Lmb/h$a;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$a<",
        "Lgb/a$b;",
        "Lgb/a$b$b;",
        ">;",
        "Lmb/q;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Lgb/a$b$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmb/h$a;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lgb/a$b$c;->r:Lgb/a$b$c;

    .line 5
    .line 6
    iput-object v0, p0, Lgb/a$b$b;->d:Lgb/a$b$c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic E(Lmb/d;Lmb/f;)Lmb/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lgb/a$b$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/a$b$b;->k()Lgb/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/a$b;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lc0/a;

    .line 13
    .line 14
    invoke-direct {v0}, Lc0/a;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lgb/a$b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/a$b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/a$b$b;->k()Lgb/a$b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/a$b$b;->l(Lgb/a$b;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic h(Lmb/d;Lmb/f;)Lmb/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lgb/a$b$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/a$b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/a$b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/a$b$b;->k()Lgb/a$b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/a$b$b;->l(Lgb/a$b;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/a$b;

    invoke-virtual {p0, p1}, Lgb/a$b$b;->l(Lgb/a$b;)V

    return-object p0
.end method

.method public final k()Lgb/a$b;
    .locals 4

    .line 1
    new-instance v0, Lgb/a$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/a$b;-><init>(Lmb/h$a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/a$b$b;->b:I

    .line 7
    .line 8
    and-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    iget v2, p0, Lgb/a$b$b;->c:I

    .line 16
    .line 17
    iput v2, v0, Lgb/a$b;->c:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    and-int/2addr v1, v2

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    or-int/lit8 v3, v3, 0x2

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lgb/a$b$b;->d:Lgb/a$b$c;

    .line 26
    .line 27
    iput-object v1, v0, Lgb/a$b;->d:Lgb/a$b$c;

    .line 28
    .line 29
    iput v3, v0, Lgb/a$b;->b:I

    .line 30
    .line 31
    return-object v0
.end method

.method public final l(Lgb/a$b;)V
    .locals 5

    .line 1
    sget-object v0, Lgb/a$b;->g:Lgb/a$b;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/a$b;->b:I

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v3, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget v1, p1, Lgb/a$b;->c:I

    .line 20
    .line 21
    iget v4, p0, Lgb/a$b$b;->b:I

    .line 22
    .line 23
    or-int/2addr v4, v3

    .line 24
    iput v4, p0, Lgb/a$b$b;->b:I

    .line 25
    .line 26
    iput v1, p0, Lgb/a$b$b;->c:I

    .line 27
    .line 28
    :cond_2
    const/4 v1, 0x2

    .line 29
    and-int/2addr v0, v1

    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    :cond_3
    if-eqz v2, :cond_5

    .line 34
    .line 35
    iget-object v0, p1, Lgb/a$b;->d:Lgb/a$b$c;

    .line 36
    .line 37
    iget v2, p0, Lgb/a$b$b;->b:I

    .line 38
    .line 39
    and-int/2addr v2, v1

    .line 40
    if-ne v2, v1, :cond_4

    .line 41
    .line 42
    iget-object v2, p0, Lgb/a$b$b;->d:Lgb/a$b$c;

    .line 43
    .line 44
    sget-object v3, Lgb/a$b$c;->r:Lgb/a$b$c;

    .line 45
    .line 46
    if-eq v2, v3, :cond_4

    .line 47
    .line 48
    new-instance v3, Lgb/a$b$c$b;

    .line 49
    .line 50
    invoke-direct {v3}, Lgb/a$b$c$b;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Lgb/a$b$c$b;->l(Lgb/a$b$c;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Lgb/a$b$c$b;->l(Lgb/a$b$c;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lgb/a$b$c$b;->k()Lgb/a$b$c;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_4
    iput-object v0, p0, Lgb/a$b$b;->d:Lgb/a$b$c;

    .line 64
    .line 65
    iget v0, p0, Lgb/a$b$b;->b:I

    .line 66
    .line 67
    or-int/2addr v0, v1

    .line 68
    iput v0, p0, Lgb/a$b$b;->b:I

    .line 69
    .line 70
    :cond_5
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 71
    .line 72
    iget-object p1, p1, Lgb/a$b;->a:Lmb/c;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 79
    .line 80
    return-void
.end method

.method public final n(Lmb/d;Lmb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lgb/a$b;->h:Lgb/a$b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/a$b;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/a$b;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/a$b$b;->l(Lgb/a$b;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    :try_start_1
    iget-object p2, p1, Lmb/j;->a:Lmb/p;

    .line 20
    .line 21
    check-cast p2, Lgb/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    const/4 p2, 0x0

    .line 27
    :goto_2
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lgb/a$b$b;->l(Lgb/a$b;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
