.class public final Lgb/v;
.super Lmb/h;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/v$b;
    }
.end annotation


# static fields
.field public static final e:Lgb/v;

.field public static final f:Lgb/v$a;


# instance fields
.field public final a:Lmb/c;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/u;",
            ">;"
        }
    .end annotation
.end field

.field public c:B

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgb/v$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/v$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgb/v;->f:Lgb/v$a;

    .line 7
    .line 8
    new-instance v0, Lgb/v;

    .line 9
    .line 10
    invoke-direct {v0}, Lgb/v;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lgb/v;->e:Lgb/v;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lgb/v;->b:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/v;->c:B

    iput v0, p0, Lgb/v;->d:I

    sget-object v0, Lmb/c;->a:Lmb/o;

    iput-object v0, p0, Lgb/v;->a:Lmb/c;

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

    iput-byte v0, p0, Lgb/v;->c:B

    iput v0, p0, Lgb/v;->d:I

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgb/v;->b:Ljava/util/List;

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

    :cond_1
    and-int/lit8 v5, v4, 0x1

    if-eq v5, v1, :cond_2

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lgb/v;->b:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    :cond_2
    iget-object v5, p0, Lgb/v;->b:Ljava/util/List;

    sget-object v6, Lgb/u;->m:Lgb/u$a;

    invoke-virtual {p1, v6, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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
    new-instance p2, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p0, p2, Lmb/j;->a:Lmb/p;

    .line 8
    throw p2

    :catch_1
    move-exception p1

    .line 9
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 10
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lgb/v;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/v;->b:Ljava/util/List;

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

    move-result-object p2

    iput-object p2, p0, Lgb/v;->a:Lmb/c;

    throw p1

    :catch_2
    :goto_4
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/v;->a:Lmb/c;

    throw p1

    :cond_5
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lgb/v;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/v;->b:Ljava/util/List;

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

    move-result-object p2

    iput-object p2, p0, Lgb/v;->a:Lmb/c;

    throw p1

    :catch_3
    :goto_5
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/v;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lmb/h;-><init>(I)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/v;->c:B

    iput v0, p0, Lgb/v;->d:I

    .line 12
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 13
    iput-object p1, p0, Lgb/v;->a:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, Lgb/v;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lgb/v;->c:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Lgb/v;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lgb/v;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lgb/v;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/p;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lmb/e;->d(ILmb/p;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgb/v;->a:Lmb/c;

    invoke-virtual {v0}, Lmb/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lgb/v;->d:I

    return v0
.end method

.method public final d(Lmb/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgb/v;->c()I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgb/v;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lgb/v;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/p;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lmb/e;->o(ILmb/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgb/v;->a:Lmb/c;

    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    return-void
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/v$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/v$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/v$b;->l(Lgb/v;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/v$b;

    invoke-direct {v0}, Lgb/v$b;-><init>()V

    return-object v0
.end method
