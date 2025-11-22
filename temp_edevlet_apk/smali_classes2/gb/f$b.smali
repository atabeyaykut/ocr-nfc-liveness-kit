.class public final Lgb/f$b;
.super Lmb/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$b<",
        "Lgb/f;",
        "Lgb/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmb/h$b;-><init>()V

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

    invoke-virtual {p0, p1, p2}, Lgb/f$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 3

    .line 1
    new-instance v0, Lgb/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/f;-><init>(Lmb/h$b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/f$b;->d:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    and-int/2addr v1, v2

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    iget v1, p0, Lgb/f$b;->e:I

    .line 15
    .line 16
    iput v1, v0, Lgb/f;->d:I

    .line 17
    .line 18
    iput v2, v0, Lgb/f;->c:I

    .line 19
    .line 20
    invoke-virtual {v0}, Lgb/f;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Lc0/a;

    .line 28
    .line 29
    invoke-direct {v0}, Lc0/a;-><init>()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lgb/f$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/f$b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lgb/f;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lgb/f;-><init>(Lmb/h$b;)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lgb/f$b;->d:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    and-int/2addr v2, v3

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    :goto_0
    iget v2, p0, Lgb/f$b;->e:I

    .line 20
    .line 21
    iput v2, v1, Lgb/f;->d:I

    .line 22
    .line 23
    iput v3, v1, Lgb/f;->c:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lgb/f$b;->l(Lgb/f;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final bridge synthetic h(Lmb/d;Lmb/f;)Lmb/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lgb/f$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 4

    .line 1
    new-instance v0, Lgb/f$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/f$b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lgb/f;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lgb/f;-><init>(Lmb/h$b;)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lgb/f$b;->d:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    and-int/2addr v2, v3

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    :goto_0
    iget v2, p0, Lgb/f$b;->e:I

    .line 20
    .line 21
    iput v2, v1, Lgb/f;->d:I

    .line 22
    .line 23
    iput v3, v1, Lgb/f;->c:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lgb/f$b;->l(Lgb/f;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/f;

    invoke-virtual {p0, p1}, Lgb/f$b;->l(Lgb/f;)V

    return-object p0
.end method

.method public final l(Lgb/f;)V
    .locals 3

    .line 1
    sget-object v0, Lgb/f;->g:Lgb/f;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/f;->c:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    and-int/2addr v0, v1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v0, p1, Lgb/f;->d:I

    .line 18
    .line 19
    iget v2, p0, Lgb/f$b;->d:I

    .line 20
    .line 21
    or-int/2addr v1, v2

    .line 22
    iput v1, p0, Lgb/f$b;->d:I

    .line 23
    .line 24
    iput v0, p0, Lgb/f$b;->e:I

    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0, p1}, Lmb/h$b;->k(Lmb/h$c;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 30
    .line 31
    iget-object p1, p1, Lgb/f;->b:Lmb/c;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 38
    .line 39
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
    sget-object v0, Lgb/f;->h:Lgb/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/f;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/f;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/f$b;->l(Lgb/f;)V

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
    check-cast p2, Lgb/f;
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
    invoke-virtual {p0, p2}, Lgb/f$b;->l(Lgb/f;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
