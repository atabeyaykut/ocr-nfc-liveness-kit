.class public final Ljb/a$c;
.super Lmb/h;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljb/a$c$b;
    }
.end annotation


# static fields
.field public static final k:Ljb/a$c;

.field public static final l:Ljb/a$c$a;


# instance fields
.field public final a:Lmb/c;

.field public b:I

.field public c:Ljb/a$a;

.field public d:Ljb/a$b;

.field public e:Ljb/a$b;

.field public f:Ljb/a$b;

.field public g:Ljb/a$b;

.field public h:B

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljb/a$c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljb/a$c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljb/a$c;->l:Ljb/a$c$a;

    .line 7
    .line 8
    new-instance v0, Ljb/a$c;

    .line 9
    .line 10
    invoke-direct {v0}, Ljb/a$c;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ljb/a$c;->k:Ljb/a$c;

    .line 14
    .line 15
    sget-object v1, Ljb/a$a;->g:Ljb/a$a;

    .line 16
    .line 17
    iput-object v1, v0, Ljb/a$c;->c:Ljb/a$a;

    .line 18
    .line 19
    sget-object v1, Ljb/a$b;->g:Ljb/a$b;

    .line 20
    .line 21
    iput-object v1, v0, Ljb/a$c;->d:Ljb/a$b;

    .line 22
    .line 23
    iput-object v1, v0, Ljb/a$c;->e:Ljb/a$b;

    .line 24
    .line 25
    iput-object v1, v0, Ljb/a$c;->f:Ljb/a$b;

    .line 26
    .line 27
    iput-object v1, v0, Ljb/a$c;->g:Ljb/a$b;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljb/a$c;->h:B

    iput v0, p0, Ljb/a$c;->j:I

    sget-object v0, Lmb/c;->a:Lmb/o;

    iput-object v0, p0, Ljb/a$c;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;Lmb/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljb/a$c;->h:B

    iput v0, p0, Ljb/a$c;->j:I

    .line 2
    sget-object v0, Ljb/a$a;->g:Ljb/a$a;

    .line 3
    iput-object v0, p0, Ljb/a$c;->c:Ljb/a$a;

    .line 4
    sget-object v0, Ljb/a$b;->g:Ljb/a$b;

    .line 5
    iput-object v0, p0, Ljb/a$c;->d:Ljb/a$b;

    iput-object v0, p0, Ljb/a$c;->e:Ljb/a$b;

    iput-object v0, p0, Ljb/a$c;->f:Ljb/a$b;

    iput-object v0, p0, Ljb/a$c;->g:Ljb/a$b;

    .line 6
    new-instance v0, Lmb/c$b;

    invoke-direct {v0}, Lmb/c$b;-><init>()V

    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_e

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 8
    invoke-virtual {p1, v4, v2}, Lmb/d;->q(ILmb/e;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_1
    iget v4, p0, Ljb/a$c;->b:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Ljb/a$c;->g:Ljb/a$b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v4}, Ljb/a$b;->i(Ljb/a$b;)Ljb/a$b$b;

    move-result-object v6

    .line 11
    :cond_2
    sget-object v4, Ljb/a$b;->h:Ljb/a$b$a;

    invoke-virtual {p1, v4, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v4

    check-cast v4, Ljb/a$b;

    iput-object v4, p0, Ljb/a$c;->g:Ljb/a$b;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v4}, Ljb/a$b$b;->l(Ljb/a$b;)V

    invoke-virtual {v6}, Ljb/a$b$b;->k()Ljb/a$b;

    move-result-object v4

    iput-object v4, p0, Ljb/a$c;->g:Ljb/a$b;

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_3
    iget v4, p0, Ljb/a$c;->b:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Ljb/a$c;->f:Ljb/a$b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v4}, Ljb/a$b;->i(Ljb/a$b;)Ljb/a$b$b;

    move-result-object v6

    .line 13
    :cond_4
    sget-object v4, Ljb/a$b;->h:Ljb/a$b$a;

    invoke-virtual {p1, v4, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v4

    check-cast v4, Ljb/a$b;

    iput-object v4, p0, Ljb/a$c;->f:Ljb/a$b;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v4}, Ljb/a$b$b;->l(Ljb/a$b;)V

    invoke-virtual {v6}, Ljb/a$b$b;->k()Ljb/a$b;

    move-result-object v4

    iput-object v4, p0, Ljb/a$c;->f:Ljb/a$b;

    goto :goto_1

    :cond_5
    iget v4, p0, Ljb/a$c;->b:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Ljb/a$c;->e:Ljb/a$b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v4}, Ljb/a$b;->i(Ljb/a$b;)Ljb/a$b$b;

    move-result-object v6

    .line 15
    :cond_6
    sget-object v4, Ljb/a$b;->h:Ljb/a$b$a;

    invoke-virtual {p1, v4, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v4

    check-cast v4, Ljb/a$b;

    iput-object v4, p0, Ljb/a$c;->e:Ljb/a$b;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v4}, Ljb/a$b$b;->l(Ljb/a$b;)V

    invoke-virtual {v6}, Ljb/a$b$b;->k()Ljb/a$b;

    move-result-object v4

    iput-object v4, p0, Ljb/a$c;->e:Ljb/a$b;

    goto :goto_1

    :cond_7
    iget v4, p0, Ljb/a$c;->b:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Ljb/a$c;->d:Ljb/a$b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {v4}, Ljb/a$b;->i(Ljb/a$b;)Ljb/a$b$b;

    move-result-object v6

    .line 17
    :cond_8
    sget-object v4, Ljb/a$b;->h:Ljb/a$b$a;

    invoke-virtual {p1, v4, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v4

    check-cast v4, Ljb/a$b;

    iput-object v4, p0, Ljb/a$c;->d:Ljb/a$b;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v4}, Ljb/a$b$b;->l(Ljb/a$b;)V

    invoke-virtual {v6}, Ljb/a$b$b;->k()Ljb/a$b;

    move-result-object v4

    iput-object v4, p0, Ljb/a$c;->d:Ljb/a$b;

    :cond_9
    :goto_1
    iget v4, p0, Ljb/a$c;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Ljb/a$c;->b:I

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Ljb/a$c;->b:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_b

    iget-object v4, p0, Ljb/a$c;->c:Ljb/a$a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v6, Ljb/a$a$b;

    invoke-direct {v6}, Ljb/a$a$b;-><init>()V

    .line 19
    invoke-virtual {v6, v4}, Ljb/a$a$b;->l(Ljb/a$a;)V

    .line 20
    :cond_b
    sget-object v4, Ljb/a$a;->h:Ljb/a$a$a;

    invoke-virtual {p1, v4, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v4

    check-cast v4, Ljb/a$a;

    iput-object v4, p0, Ljb/a$c;->c:Ljb/a$a;

    if-eqz v6, :cond_c

    invoke-virtual {v6, v4}, Ljb/a$a$b;->l(Ljb/a$a;)V

    invoke-virtual {v6}, Ljb/a$a$b;->k()Ljb/a$a;

    move-result-object v4

    iput-object v4, p0, Ljb/a$c;->c:Ljb/a$a;

    :cond_c
    iget v4, p0, Ljb/a$c;->b:I

    or-int/2addr v4, v1

    iput v4, p0, Ljb/a$c;->b:I
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    :goto_3
    :try_start_1
    new-instance p2, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p0, p2, Lmb/j;->a:Lmb/p;

    .line 22
    throw p2

    :catch_1
    move-exception p1

    .line 23
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 24
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Ljb/a$c;->a:Lmb/c;

    throw p1

    :catch_2
    :goto_5
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Ljb/a$c;->a:Lmb/c;

    throw p1

    :cond_e
    :try_start_3
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Ljb/a$c;->a:Lmb/c;

    throw p1

    :catch_3
    :goto_6
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Ljb/a$c;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lmb/h;-><init>(I)V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljb/a$c;->h:B

    iput v0, p0, Ljb/a$c;->j:I

    .line 26
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 27
    iput-object p1, p0, Ljb/a$c;->a:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, Ljb/a$c;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Ljb/a$c;->h:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Ljb/a$c;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ljb/a$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljb/a$c;->c:Ljb/a$a;

    invoke-static {v1, v0}, Lmb/e;->d(ILmb/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Ljb/a$c;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ljb/a$c;->d:Ljb/a$b;

    invoke-static {v1, v0}, Lmb/e;->d(ILmb/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Ljb/a$c;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    iget-object v3, p0, Ljb/a$c;->e:Ljb/a$b;

    invoke-static {v0, v3}, Lmb/e;->d(ILmb/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Ljb/a$c;->b:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Ljb/a$c;->f:Ljb/a$b;

    invoke-static {v1, v0}, Lmb/e;->d(ILmb/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Ljb/a$c;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Ljb/a$c;->g:Ljb/a$b;

    invoke-static {v0, v1}, Lmb/e;->d(ILmb/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget-object v0, p0, Ljb/a$c;->a:Lmb/c;

    invoke-virtual {v0}, Lmb/c;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Ljb/a$c;->j:I

    return v0
.end method

.method public final d(Lmb/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljb/a$c;->c()I

    iget v0, p0, Ljb/a$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljb/a$c;->c:Ljb/a$a;

    invoke-virtual {p1, v1, v0}, Lmb/e;->o(ILmb/p;)V

    :cond_0
    iget v0, p0, Ljb/a$c;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljb/a$c;->d:Ljb/a$b;

    invoke-virtual {p1, v1, v0}, Lmb/e;->o(ILmb/p;)V

    :cond_1
    iget v0, p0, Ljb/a$c;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Ljb/a$c;->e:Ljb/a$b;

    invoke-virtual {p1, v0, v2}, Lmb/e;->o(ILmb/p;)V

    :cond_2
    iget v0, p0, Ljb/a$c;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Ljb/a$c;->f:Ljb/a$b;

    invoke-virtual {p1, v1, v0}, Lmb/e;->o(ILmb/p;)V

    :cond_3
    iget v0, p0, Ljb/a$c;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Ljb/a$c;->g:Ljb/a$b;

    invoke-virtual {p1, v0, v1}, Lmb/e;->o(ILmb/p;)V

    :cond_4
    iget-object v0, p0, Ljb/a$c;->a:Lmb/c;

    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    return-void
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Ljb/a$c$b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljb/a$c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljb/a$c$b;->l(Ljb/a$c;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Ljb/a$c$b;

    invoke-direct {v0}, Ljb/a$c$b;-><init>()V

    return-object v0
.end method
