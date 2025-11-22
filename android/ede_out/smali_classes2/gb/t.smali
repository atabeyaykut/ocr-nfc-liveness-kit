.class public final Lgb/t;
.super Lmb/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/t$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$c<",
        "Lgb/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:Lgb/t;

.field public static final n:Lgb/t$a;


# instance fields
.field public final b:Lmb/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lgb/p;

.field public g:I

.field public h:Lgb/p;

.field public j:I

.field public k:B

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lgb/t$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/t$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgb/t;->n:Lgb/t$a;

    .line 7
    .line 8
    new-instance v0, Lgb/t;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lgb/t;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lgb/t;->m:Lgb/t;

    .line 15
    .line 16
    iput v1, v0, Lgb/t;->d:I

    .line 17
    .line 18
    iput v1, v0, Lgb/t;->e:I

    .line 19
    .line 20
    sget-object v2, Lgb/p;->w:Lgb/p;

    .line 21
    .line 22
    iput-object v2, v0, Lgb/t;->f:Lgb/p;

    .line 23
    .line 24
    iput v1, v0, Lgb/t;->g:I

    .line 25
    .line 26
    iput-object v2, v0, Lgb/t;->h:Lgb/p;

    .line 27
    .line 28
    iput v1, v0, Lgb/t;->j:I

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lmb/h$c;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lgb/t;->k:B

    iput p1, p0, Lgb/t;->l:I

    sget-object p1, Lmb/c;->a:Lmb/o;

    iput-object p1, p0, Lgb/t;->b:Lmb/c;

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
    invoke-direct {p0}, Lmb/h$c;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/t;->k:B

    iput v0, p0, Lgb/t;->l:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lgb/t;->d:I

    iput v0, p0, Lgb/t;->e:I

    .line 3
    sget-object v1, Lgb/p;->w:Lgb/p;

    .line 4
    iput-object v1, p0, Lgb/t;->f:Lgb/p;

    iput v0, p0, Lgb/t;->g:I

    iput-object v1, p0, Lgb/t;->h:Lgb/p;

    iput v0, p0, Lgb/t;->j:I

    .line 5
    new-instance v1, Lmb/c$b;

    invoke-direct {v1}, Lmb/c$b;-><init>()V

    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v2}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_c

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0x8

    if-eq v4, v5, :cond_a

    const/16 v6, 0x10

    if-eq v4, v6, :cond_9

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-eq v4, v7, :cond_6

    const/16 v7, 0x22

    if-eq v4, v7, :cond_3

    const/16 v6, 0x28

    if-eq v4, v6, :cond_2

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1, v3, p2, v4}, Lmb/h$c;->o(Lmb/d;Lmb/e;Lmb/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_1
    iget v4, p0, Lgb/t;->c:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lgb/t;->c:I

    .line 7
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v4

    .line 8
    iput v4, p0, Lgb/t;->j:I

    goto :goto_0

    :cond_2
    iget v4, p0, Lgb/t;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lgb/t;->c:I

    .line 9
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v4

    .line 10
    iput v4, p0, Lgb/t;->g:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lgb/t;->c:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lgb/t;->h:Lgb/p;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {v4}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    .line 12
    :cond_4
    :goto_1
    sget-object v4, Lgb/p;->x:Lgb/p$a;

    invoke-virtual {p1, v4, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v4

    check-cast v4, Lgb/p;

    iput-object v4, p0, Lgb/t;->h:Lgb/p;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v4}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v8}, Lgb/p$c;->l()Lgb/p;

    move-result-object v4

    iput-object v4, p0, Lgb/t;->h:Lgb/p;

    :cond_5
    iget v4, p0, Lgb/t;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Lgb/t;->c:I

    goto :goto_0

    :cond_6
    iget v4, p0, Lgb/t;->c:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lgb/t;->f:Lgb/p;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {v4}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v8

    .line 14
    :cond_7
    sget-object v4, Lgb/p;->x:Lgb/p$a;

    invoke-virtual {p1, v4, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v4

    check-cast v4, Lgb/p;

    iput-object v4, p0, Lgb/t;->f:Lgb/p;

    if-eqz v8, :cond_8

    invoke-virtual {v8, v4}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v8}, Lgb/p$c;->l()Lgb/p;

    move-result-object v4

    iput-object v4, p0, Lgb/t;->f:Lgb/p;

    :cond_8
    iget v4, p0, Lgb/t;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lgb/t;->c:I

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lgb/t;->c:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lgb/t;->c:I

    .line 15
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v4

    .line 16
    iput v4, p0, Lgb/t;->e:I

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Lgb/t;->c:I

    or-int/2addr v4, v2

    iput v4, p0, Lgb/t;->c:I

    .line 17
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v4

    .line 18
    iput v4, p0, Lgb/t;->d:I
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    :goto_3
    :try_start_1
    new-instance p2, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p0, p2, Lmb/j;->a:Lmb/p;

    .line 20
    throw p2

    :catch_1
    move-exception p1

    .line 21
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 22
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    invoke-virtual {v3}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/t;->b:Lmb/c;

    throw p1

    :catch_2
    :goto_5
    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/t;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    throw p1

    :cond_c
    :try_start_3
    invoke-virtual {v3}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/t;->b:Lmb/c;

    throw p1

    :catch_3
    :goto_6
    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/t;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    return-void
.end method

.method public constructor <init>(Lmb/h$b;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lmb/h$c;-><init>(Lmb/h$b;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/t;->k:B

    iput v0, p0, Lgb/t;->l:I

    .line 24
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 25
    iput-object p1, p0, Lgb/t;->b:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 5

    .line 1
    iget-byte v0, p0, Lgb/t;->k:B

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
    iget v0, p0, Lgb/t;->c:I

    .line 12
    .line 13
    and-int/lit8 v3, v0, 0x2

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne v3, v4, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-nez v3, :cond_3

    .line 22
    .line 23
    iput-byte v2, p0, Lgb/t;->k:B

    .line 24
    .line 25
    return v2

    .line 26
    :cond_3
    const/4 v3, 0x4

    .line 27
    and-int/2addr v0, v3

    .line 28
    if-ne v0, v3, :cond_4

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_4
    const/4 v0, 0x0

    .line 33
    :goto_1
    if-eqz v0, :cond_5

    .line 34
    .line 35
    iget-object v0, p0, Lgb/t;->f:Lgb/p;

    .line 36
    .line 37
    invoke-virtual {v0}, Lgb/p;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_5

    .line 42
    .line 43
    iput-byte v2, p0, Lgb/t;->k:B

    .line 44
    .line 45
    return v2

    .line 46
    :cond_5
    iget v0, p0, Lgb/t;->c:I

    .line 47
    .line 48
    const/16 v3, 0x10

    .line 49
    .line 50
    and-int/2addr v0, v3

    .line 51
    if-ne v0, v3, :cond_6

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_6
    const/4 v0, 0x0

    .line 56
    :goto_2
    if-eqz v0, :cond_7

    .line 57
    .line 58
    iget-object v0, p0, Lgb/t;->h:Lgb/p;

    .line 59
    .line 60
    invoke-virtual {v0}, Lgb/p;->b()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_7

    .line 65
    .line 66
    iput-byte v2, p0, Lgb/t;->k:B

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    invoke-virtual {p0}, Lmb/h$c;->i()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_8

    .line 74
    .line 75
    iput-byte v2, p0, Lgb/t;->k:B

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iput-byte v1, p0, Lgb/t;->k:B

    .line 79
    .line 80
    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Lgb/t;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lgb/t;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgb/t;->d:I

    invoke-static {v1, v0}, Lmb/e;->b(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lgb/t;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lgb/t;->e:I

    invoke-static {v1, v0}, Lmb/e;->b(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lgb/t;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    iget-object v3, p0, Lgb/t;->f:Lgb/p;

    invoke-static {v0, v3}, Lmb/e;->d(ILmb/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lgb/t;->c:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lgb/t;->h:Lgb/p;

    invoke-static {v1, v0}, Lmb/e;->d(ILmb/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lgb/t;->c:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    iget v1, p0, Lgb/t;->g:I

    invoke-static {v0, v1}, Lmb/e;->b(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lgb/t;->c:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    iget v1, p0, Lgb/t;->j:I

    invoke-static {v0, v1}, Lmb/e;->b(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    invoke-virtual {p0}, Lmb/h$c;->j()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lgb/t;->b:Lmb/c;

    invoke-virtual {v1}, Lmb/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lgb/t;->l:I

    return v1
.end method

.method public final d(Lmb/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgb/t;->c()I

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmb/h$c$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lmb/h$c$a;-><init>(Lmb/h$c;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lgb/t;->c:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    and-int/2addr v1, v2

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lgb/t;->d:I

    .line 16
    .line 17
    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lgb/t;->c:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    and-int/2addr v1, v2

    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lgb/t;->e:I

    .line 27
    .line 28
    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget v1, p0, Lgb/t;->c:I

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    and-int/2addr v1, v2

    .line 35
    if-ne v1, v2, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    iget-object v3, p0, Lgb/t;->f:Lgb/p;

    .line 39
    .line 40
    invoke-virtual {p1, v1, v3}, Lmb/e;->o(ILmb/p;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget v1, p0, Lgb/t;->c:I

    .line 44
    .line 45
    const/16 v3, 0x10

    .line 46
    .line 47
    and-int/2addr v1, v3

    .line 48
    if-ne v1, v3, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Lgb/t;->h:Lgb/p;

    .line 51
    .line 52
    invoke-virtual {p1, v2, v1}, Lmb/e;->o(ILmb/p;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget v1, p0, Lgb/t;->c:I

    .line 56
    .line 57
    const/16 v2, 0x8

    .line 58
    .line 59
    and-int/2addr v1, v2

    .line 60
    if-ne v1, v2, :cond_4

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    iget v2, p0, Lgb/t;->g:I

    .line 64
    .line 65
    invoke-virtual {p1, v1, v2}, Lmb/e;->m(II)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget v1, p0, Lgb/t;->c:I

    .line 69
    .line 70
    const/16 v2, 0x20

    .line 71
    .line 72
    and-int/2addr v1, v2

    .line 73
    if-ne v1, v2, :cond_5

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    iget v2, p0, Lgb/t;->j:I

    .line 77
    .line 78
    invoke-virtual {p1, v1, v2}, Lmb/e;->m(II)V

    .line 79
    .line 80
    .line 81
    :cond_5
    const/16 v1, 0xc8

    .line 82
    .line 83
    invoke-virtual {v0, v1, p1}, Lmb/h$c$a;->a(ILmb/e;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lgb/t;->b:Lmb/c;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final e()Lmb/p;
    .locals 1

    sget-object v0, Lgb/t;->m:Lgb/t;

    return-object v0
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/t$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/t$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/t$b;->n(Lgb/t;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/t$b;

    invoke-direct {v0}, Lgb/t$b;-><init>()V

    return-object v0
.end method
