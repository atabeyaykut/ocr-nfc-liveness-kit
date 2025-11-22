.class public final Lgb/f;
.super Lmb/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$c<",
        "Lgb/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lgb/f;

.field public static final h:Lgb/f$a;


# instance fields
.field public final b:Lmb/c;

.field public c:I

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgb/f$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/f$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgb/f;->h:Lgb/f$a;

    .line 7
    .line 8
    new-instance v0, Lgb/f;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lgb/f;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lgb/f;->g:Lgb/f;

    .line 15
    .line 16
    iput v1, v0, Lgb/f;->d:I

    .line 17
    .line 18
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

    iput-byte p1, p0, Lgb/f;->e:B

    iput p1, p0, Lgb/f;->f:I

    sget-object p1, Lmb/c;->a:Lmb/o;

    iput-object p1, p0, Lgb/f;->b:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;Lmb/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h$c;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/f;->e:B

    iput v0, p0, Lgb/f;->f:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lgb/f;->d:I

    .line 3
    new-instance v1, Lmb/c$b;

    invoke-direct {v1}, Lmb/c$b;-><init>()V

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1, v3, p2, v4}, Lmb/h$c;->o(Lmb/d;Lmb/e;Lmb/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    iget v4, p0, Lgb/f;->c:I

    or-int/2addr v4, v2

    iput v4, p0, Lgb/f;->c:I

    .line 5
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v4

    .line 6
    iput v4, p0, Lgb/f;->d:I
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

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

    :goto_2
    :try_start_2
    invoke-virtual {v3}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/f;->b:Lmb/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/f;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    throw p1

    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/f;->b:Lmb/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/f;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    return-void
.end method

.method public constructor <init>(Lmb/h$b;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lmb/h$c;-><init>(Lmb/h$b;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/f;->e:B

    iput v0, p0, Lgb/f;->f:I

    .line 12
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 13
    iput-object p1, p0, Lgb/f;->b:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    iget-byte v0, p0, Lgb/f;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lmb/h$c;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lgb/f;->e:B

    return v2

    :cond_2
    iput-byte v1, p0, Lgb/f;->e:B

    return v1
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Lgb/f;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lgb/f;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgb/f;->d:I

    invoke-static {v1, v0}, Lmb/e;->b(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    invoke-virtual {p0}, Lmb/h$c;->j()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lgb/f;->b:Lmb/c;

    invoke-virtual {v1}, Lmb/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lgb/f;->f:I

    return v1
.end method

.method public final d(Lmb/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgb/f;->c()I

    invoke-virtual {p0}, Lmb/h$c;->n()Lmb/h$c$a;

    move-result-object v0

    iget v1, p0, Lgb/f;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lgb/f;->d:I

    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    :cond_0
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lmb/h$c$a;->a(ILmb/e;)V

    iget-object v0, p0, Lgb/f;->b:Lmb/c;

    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    return-void
.end method

.method public final e()Lmb/p;
    .locals 1

    sget-object v0, Lgb/f;->g:Lgb/f;

    return-object v0
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/f$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/f$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/f$b;->l(Lgb/f;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/f$b;

    invoke-direct {v0}, Lgb/f$b;-><init>()V

    return-object v0
.end method
