.class public final Lgb/a;
.super Lmb/h;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/a$c;,
        Lgb/a$b;
    }
.end annotation


# static fields
.field public static final g:Lgb/a;

.field public static final h:Lgb/a$a;


# instance fields
.field public final a:Lmb/c;

.field public b:I

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgb/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgb/a;->h:Lgb/a$a;

    .line 7
    .line 8
    new-instance v0, Lgb/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lgb/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lgb/a;->g:Lgb/a;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lgb/a;->c:I

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lgb/a;->d:Ljava/util/List;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/a;->e:B

    iput v0, p0, Lgb/a;->f:I

    sget-object v0, Lmb/c;->a:Lmb/o;

    iput-object v0, p0, Lgb/a;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;Lmb/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/a;->e:B

    iput v0, p0, Lgb/a;->f:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lgb/a;->c:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lgb/a;->d:Ljava/util/List;

    .line 3
    new-instance v1, Lmb/c$b;

    invoke-direct {v1}, Lmb/c$b;-><init>()V

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v6

    if-eqz v6, :cond_4

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    const/16 v7, 0x12

    if-eq v6, v7, :cond_1

    .line 5
    invoke-virtual {p1, v6, v3}, Lmb/d;->q(ILmb/e;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_2

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lgb/a;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    :cond_2
    iget-object v6, p0, Lgb/a;->d:Ljava/util/List;

    sget-object v7, Lgb/a$b;->h:Lgb/a$b$a;

    invoke-virtual {p1, v7, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget v6, p0, Lgb/a;->b:I

    or-int/2addr v6, v2

    iput v6, p0, Lgb/a;->b:I

    .line 7
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 8
    iput v6, p0, Lgb/a;->c:I
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    :try_start_1
    new-instance p2, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p0, p2, Lmb/j;->a:Lmb/p;

    .line 10
    throw p2

    :catch_1
    move-exception p1

    .line 11
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 12
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_5

    iget-object p2, p0, Lgb/a;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/a;->d:Ljava/util/List;

    :cond_5
    :try_start_2
    invoke-virtual {v3}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/a;->a:Lmb/c;

    throw p1

    :catch_2
    :goto_4
    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/a;->a:Lmb/c;

    throw p1

    :cond_6
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_7

    iget-object p1, p0, Lgb/a;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/a;->d:Ljava/util/List;

    :cond_7
    :try_start_3
    invoke-virtual {v3}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/a;->a:Lmb/c;

    throw p1

    :catch_3
    :goto_5
    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/a;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lmb/h;-><init>(I)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/a;->e:B

    iput v0, p0, Lgb/a;->f:I

    .line 14
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 15
    iput-object p1, p0, Lgb/a;->a:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lgb/a;->e:B

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
    iget v0, p0, Lgb/a;->b:I

    .line 12
    .line 13
    and-int/2addr v0, v1

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_3

    .line 20
    .line 21
    iput-byte v2, p0, Lgb/a;->e:B

    .line 22
    .line 23
    return v2

    .line 24
    :cond_3
    const/4 v0, 0x0

    .line 25
    :goto_1
    iget-object v3, p0, Lgb/a;->d:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v0, v3, :cond_5

    .line 32
    .line 33
    iget-object v3, p0, Lgb/a;->d:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lgb/a$b;

    .line 40
    .line 41
    invoke-virtual {v3}, Lgb/a$b;->b()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_4

    .line 46
    .line 47
    iput-byte v2, p0, Lgb/a;->e:B

    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    iput-byte v1, p0, Lgb/a;->e:B

    .line 54
    .line 55
    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Lgb/a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lgb/a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgb/a;->c:I

    invoke-static {v1, v0}, Lmb/e;->b(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgb/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lgb/a;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/p;

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lmb/e;->d(ILmb/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lgb/a;->a:Lmb/c;

    invoke-virtual {v1}, Lmb/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lgb/a;->f:I

    return v1
.end method

.method public final d(Lmb/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgb/a;->c()I

    iget v0, p0, Lgb/a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lgb/a;->c:I

    invoke-virtual {p1, v1, v0}, Lmb/e;->m(II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgb/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lgb/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/p;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lmb/e;->o(ILmb/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgb/a;->a:Lmb/c;

    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    return-void
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/a$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/a$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/a$c;->l(Lgb/a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/a$c;

    invoke-direct {v0}, Lgb/a$c;-><init>()V

    return-object v0
.end method
