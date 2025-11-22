.class public final Lgb/p$b;
.super Lmb/h;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/p$b$b;,
        Lgb/p$b$c;
    }
.end annotation


# static fields
.field public static final h:Lgb/p$b;

.field public static final j:Lgb/p$b$a;


# instance fields
.field public final a:Lmb/c;

.field public b:I

.field public c:Lgb/p$b$c;

.field public d:Lgb/p;

.field public e:I

.field public f:B

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgb/p$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/p$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgb/p$b;->j:Lgb/p$b$a;

    .line 7
    .line 8
    new-instance v0, Lgb/p$b;

    .line 9
    .line 10
    invoke-direct {v0}, Lgb/p$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lgb/p$b;->h:Lgb/p$b;

    .line 14
    .line 15
    sget-object v1, Lgb/p$b$c;->d:Lgb/p$b$c;

    .line 16
    .line 17
    iput-object v1, v0, Lgb/p$b;->c:Lgb/p$b$c;

    .line 18
    .line 19
    sget-object v1, Lgb/p;->w:Lgb/p;

    .line 20
    .line 21
    iput-object v1, v0, Lgb/p$b;->d:Lgb/p;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput v1, v0, Lgb/p$b;->e:I

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/p$b;->f:B

    iput v0, p0, Lgb/p$b;->g:I

    sget-object v0, Lmb/c;->a:Lmb/o;

    iput-object v0, p0, Lgb/p$b;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;Lmb/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/p$b;->f:B

    iput v0, p0, Lgb/p$b;->g:I

    .line 2
    sget-object v0, Lgb/p$b$c;->d:Lgb/p$b$c;

    iput-object v0, p0, Lgb/p$b;->c:Lgb/p$b$c;

    .line 3
    sget-object v1, Lgb/p;->w:Lgb/p;

    .line 4
    iput-object v1, p0, Lgb/p$b;->d:Lgb/p;

    const/4 v1, 0x0

    iput v1, p0, Lgb/p$b;->e:I

    .line 5
    new-instance v2, Lmb/c$b;

    invoke-direct {v2}, Lmb/c$b;-><init>()V

    const/4 v3, 0x1

    .line 6
    invoke-static {v2, v3}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v4

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v5

    if-eqz v5, :cond_b

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v5, v6, :cond_5

    const/16 v6, 0x12

    if-eq v5, v6, :cond_2

    const/16 v6, 0x18

    if-eq v5, v6, :cond_1

    .line 7
    invoke-virtual {p1, v5, v4}, Lmb/d;->q(ILmb/e;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_1
    iget v5, p0, Lgb/p$b;->b:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lgb/p$b;->b:I

    .line 9
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v5

    .line 10
    iput v5, p0, Lgb/p$b;->e:I

    goto :goto_0

    :cond_2
    iget v5, p0, Lgb/p$b;->b:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lgb/p$b;->d:Lgb/p;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {v5}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    .line 12
    :cond_3
    :goto_1
    sget-object v5, Lgb/p;->x:Lgb/p$a;

    invoke-virtual {p1, v5, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v5

    check-cast v5, Lgb/p;

    iput-object v5, p0, Lgb/p$b;->d:Lgb/p;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v5}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v7}, Lgb/p$c;->l()Lgb/p;

    move-result-object v5

    iput-object v5, p0, Lgb/p$b;->d:Lgb/p;

    :cond_4
    iget v5, p0, Lgb/p$b;->b:I

    or-int/2addr v5, v8

    iput v5, p0, Lgb/p$b;->b:I

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    if-eqz v6, :cond_9

    if-eq v6, v3, :cond_8

    if-eq v6, v8, :cond_7

    const/4 v8, 0x3

    if-eq v6, v8, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    sget-object v7, Lgb/p$b$c;->e:Lgb/p$b$c;

    goto :goto_2

    :cond_7
    move-object v7, v0

    goto :goto_2

    :cond_8
    sget-object v7, Lgb/p$b$c;->c:Lgb/p$b$c;

    goto :goto_2

    :cond_9
    sget-object v7, Lgb/p$b$c;->b:Lgb/p$b$c;

    :goto_2
    if-nez v7, :cond_a

    .line 15
    invoke-virtual {v4, v5}, Lmb/e;->v(I)V

    invoke-virtual {v4, v6}, Lmb/e;->v(I)V

    goto :goto_0

    :cond_a
    iget v5, p0, Lgb/p$b;->b:I

    or-int/2addr v5, v3

    iput v5, p0, Lgb/p$b;->b:I

    iput-object v7, p0, Lgb/p$b;->c:Lgb/p$b$c;
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_4
    :try_start_1
    new-instance p2, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p0, p2, Lmb/j;->a:Lmb/p;

    .line 17
    throw p2

    :catch_1
    move-exception p1

    .line 18
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 19
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    :try_start_2
    invoke-virtual {v4}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/p$b;->a:Lmb/c;

    throw p1

    :catch_2
    :goto_6
    invoke-virtual {v2}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/p$b;->a:Lmb/c;

    throw p1

    :cond_c
    :try_start_3
    invoke-virtual {v4}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/p$b;->a:Lmb/c;

    throw p1

    :catch_3
    :goto_7
    invoke-virtual {v2}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/p$b;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lmb/h;-><init>(I)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/p$b;->f:B

    iput v0, p0, Lgb/p$b;->g:I

    .line 21
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 22
    iput-object p1, p0, Lgb/p$b;->a:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lgb/p$b;->f:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget v0, p0, Lgb/p$b;->b:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    and-int/2addr v0, v3

    .line 15
    if-ne v0, v3, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lgb/p$b;->d:Lgb/p;

    .line 23
    .line 24
    invoke-virtual {v0}, Lgb/p;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iput-byte v2, p0, Lgb/p$b;->f:B

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iput-byte v1, p0, Lgb/p$b;->f:B

    .line 34
    .line 35
    return v1
.end method

.method public final c()I
    .locals 3

    .line 1
    iget v0, p0, Lgb/p$b;->g:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lgb/p$b;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lgb/p$b;->c:Lgb/p$b$c;

    .line 15
    .line 16
    iget v0, v0, Lgb/p$b$c;->a:I

    .line 17
    .line 18
    invoke-static {v1, v0}, Lmb/e;->a(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v2, v0

    .line 23
    :cond_1
    iget v0, p0, Lgb/p$b;->b:I

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    and-int/2addr v0, v1

    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lgb/p$b;->d:Lgb/p;

    .line 30
    .line 31
    invoke-static {v1, v0}, Lmb/e;->d(ILmb/p;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v2, v0

    .line 36
    :cond_2
    iget v0, p0, Lgb/p$b;->b:I

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    and-int/2addr v0, v1

    .line 40
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    iget v1, p0, Lgb/p$b;->e:I

    .line 44
    .line 45
    invoke-static {v0, v1}, Lmb/e;->b(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v2, v0

    .line 50
    :cond_3
    iget-object v0, p0, Lgb/p$b;->a:Lmb/c;

    .line 51
    .line 52
    invoke-virtual {v0}, Lmb/c;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/2addr v0, v2

    .line 57
    iput v0, p0, Lgb/p$b;->g:I

    .line 58
    .line 59
    return v0
.end method

.method public final d(Lmb/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgb/p$b;->c()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lgb/p$b;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lgb/p$b;->c:Lgb/p$b$c;

    .line 11
    .line 12
    iget v0, v0, Lgb/p$b$c;->a:I

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Lmb/e;->l(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lgb/p$b;->b:I

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    and-int/2addr v0, v1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lgb/p$b;->d:Lgb/p;

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lmb/e;->o(ILmb/p;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget v0, p0, Lgb/p$b;->b:I

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    and-int/2addr v0, v1

    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    iget v1, p0, Lgb/p$b;->e:I

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lmb/e;->m(II)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lgb/p$b;->a:Lmb/c;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/p$b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/p$b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/p$b$b;->l(Lgb/p$b;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/p$b$b;

    invoke-direct {v0}, Lgb/p$b$b;-><init>()V

    return-object v0
.end method
