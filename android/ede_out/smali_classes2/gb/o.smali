.class public final Lgb/o;
.super Lmb/h;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/o$b;
    }
.end annotation


# static fields
.field public static final e:Lgb/o;

.field public static final f:Lgb/o$a;


# instance fields
.field public final a:Lmb/c;

.field public b:Lmb/n;

.field public c:B

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgb/o$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/o$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgb/o;->f:Lgb/o$a;

    .line 7
    .line 8
    new-instance v0, Lgb/o;

    .line 9
    .line 10
    invoke-direct {v0}, Lgb/o;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lgb/o;->e:Lgb/o;

    .line 14
    .line 15
    sget-object v1, Lmb/m;->b:Lmb/v;

    .line 16
    .line 17
    iput-object v1, v0, Lgb/o;->b:Lmb/n;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/o;->c:B

    iput v0, p0, Lgb/o;->d:I

    sget-object v0, Lmb/c;->a:Lmb/o;

    iput-object v0, p0, Lgb/o;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/o;->c:B

    iput v0, p0, Lgb/o;->d:I

    .line 2
    sget-object v0, Lmb/m;->b:Lmb/v;

    iput-object v0, p0, Lgb/o;->b:Lmb/n;

    .line 3
    new-instance v0, Lmb/c$b;

    invoke-direct {v0}, Lmb/c$b;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    .line 5
    invoke-virtual {p1, v5, v2}, Lmb/d;->q(ILmb/e;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lmb/d;->e()Lmb/o;

    move-result-object v5

    and-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_2

    new-instance v6, Lmb/m;

    invoke-direct {v6}, Lmb/m;-><init>()V

    iput-object v6, p0, Lgb/o;->b:Lmb/n;

    or-int/lit8 v4, v4, 0x1

    :cond_2
    iget-object v6, p0, Lgb/o;->b:Lmb/n;

    invoke-interface {v6, v5}, Lmb/n;->O(Lmb/o;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :goto_2
    :try_start_1
    new-instance v3, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p0, v3, Lmb/j;->a:Lmb/p;

    .line 8
    throw v3

    :catch_1
    move-exception p1

    .line 9
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 10
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 v3, v4, 0x1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lgb/o;->b:Lmb/n;

    invoke-interface {v1}, Lmb/n;->p()Lmb/v;

    move-result-object v1

    iput-object v1, p0, Lgb/o;->b:Lmb/n;

    :cond_4
    :try_start_2
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object v0

    iput-object v0, p0, Lgb/o;->a:Lmb/c;

    throw p1

    :catch_2
    :goto_4
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object v0

    iput-object v0, p0, Lgb/o;->a:Lmb/c;

    throw p1

    :cond_5
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lgb/o;->b:Lmb/n;

    invoke-interface {p1}, Lmb/n;->p()Lmb/v;

    move-result-object p1

    iput-object p1, p0, Lgb/o;->b:Lmb/n;

    :cond_6
    :try_start_3
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object v0

    iput-object v0, p0, Lgb/o;->a:Lmb/c;

    throw p1

    :catch_3
    :goto_5
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/o;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lmb/h;-><init>(I)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/o;->c:B

    iput v0, p0, Lgb/o;->d:I

    .line 12
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 13
    iput-object p1, p0, Lgb/o;->a:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, Lgb/o;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lgb/o;->c:B

    return v1
.end method

.method public final c()I
    .locals 5

    .line 1
    iget v0, p0, Lgb/o;->d:I

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
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lgb/o;->b:Lmb/n;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lgb/o;->b:Lmb/n;

    .line 19
    .line 20
    invoke-interface {v3, v1}, Lmb/n;->c0(I)Lmb/c;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lmb/c;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Lmb/e;->f(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v3}, Lmb/c;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/2addr v3, v4

    .line 37
    add-int/2addr v2, v3

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    add-int/2addr v0, v2

    .line 42
    iget-object v1, p0, Lgb/o;->b:Lmb/n;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    mul-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    add-int/2addr v1, v0

    .line 51
    iget-object v0, p0, Lgb/o;->a:Lmb/c;

    .line 52
    .line 53
    invoke-virtual {v0}, Lmb/c;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v0, v1

    .line 58
    iput v0, p0, Lgb/o;->d:I

    .line 59
    .line 60
    return v0
.end method

.method public final d(Lmb/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgb/o;->c()I

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lgb/o;->b:Lmb/n;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lgb/o;->b:Lmb/n;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lmb/n;->c0(I)Lmb/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {p1, v3, v2}, Lmb/e;->x(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lmb/c;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1, v2}, Lmb/e;->v(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lmb/e;->r(Lmb/c;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lgb/o;->a:Lmb/c;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/o$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/o$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/o$b;->l(Lgb/o;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/o$b;

    invoke-direct {v0}, Lgb/o$b;-><init>()V

    return-object v0
.end method
