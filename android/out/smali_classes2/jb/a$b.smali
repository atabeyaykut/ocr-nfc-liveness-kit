.class public final Ljb/a$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljb/a$b$b;
    }
.end annotation


# static fields
.field public static final g:Ljb/a$b;

.field public static final h:Ljb/a$b$a;


# instance fields
.field public final a:Lmb/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljb/a$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljb/a$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljb/a$b;->h:Ljb/a$b$a;

    .line 7
    .line 8
    new-instance v0, Ljb/a$b;

    .line 9
    .line 10
    invoke-direct {v0}, Ljb/a$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ljb/a$b;->g:Ljb/a$b;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Ljb/a$b;->c:I

    .line 17
    .line 18
    iput v1, v0, Ljb/a$b;->d:I

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljb/a$b;->e:B

    iput v0, p0, Ljb/a$b;->f:I

    sget-object v0, Lmb/c;->a:Lmb/o;

    iput-object v0, p0, Ljb/a$b;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljb/a$b;->e:B

    iput v0, p0, Ljb/a$b;->f:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljb/a$b;->c:I

    iput v0, p0, Ljb/a$b;->d:I

    .line 3
    new-instance v1, Lmb/c$b;

    invoke-direct {v1}, Lmb/c$b;-><init>()V

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 5
    invoke-virtual {p1, v4, v3}, Lmb/d;->q(ILmb/e;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 6
    :cond_1
    iget v4, p0, Ljb/a$b;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljb/a$b;->b:I

    .line 7
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v4

    .line 8
    iput v4, p0, Ljb/a$b;->d:I

    goto :goto_0

    :cond_2
    iget v4, p0, Ljb/a$b;->b:I

    or-int/2addr v4, v2

    iput v4, p0, Ljb/a$b;->b:I

    .line 9
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v4

    .line 10
    iput v4, p0, Ljb/a$b;->c:I
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p0, v0, Lmb/j;->a:Lmb/p;

    .line 12
    throw v0

    :catch_1
    move-exception p1

    .line 13
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 14
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

    move-result-object v0

    iput-object v0, p0, Ljb/a$b;->a:Lmb/c;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object v0

    iput-object v0, p0, Ljb/a$b;->a:Lmb/c;

    throw p1

    :cond_4
    :try_start_3
    invoke-virtual {v3}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object v0

    iput-object v0, p0, Ljb/a$b;->a:Lmb/c;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {v1}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Ljb/a$b;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lmb/h;-><init>(I)V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljb/a$b;->e:B

    iput v0, p0, Ljb/a$b;->f:I

    .line 16
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 17
    iput-object p1, p0, Ljb/a$b;->a:Lmb/c;

    return-void
.end method

.method public static i(Ljb/a$b;)Ljb/a$b$b;
    .locals 1

    .line 1
    new-instance v0, Ljb/a$b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljb/a$b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljb/a$b$b;->l(Ljb/a$b;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, Ljb/a$b;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Ljb/a$b;->e:B

    return v1
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Ljb/a$b;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ljb/a$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Ljb/a$b;->c:I

    invoke-static {v1, v0}, Lmb/e;->b(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Ljb/a$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Ljb/a$b;->d:I

    invoke-static {v1, v0}, Lmb/e;->b(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget-object v0, p0, Ljb/a$b;->a:Lmb/c;

    invoke-virtual {v0}, Lmb/c;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Ljb/a$b;->f:I

    return v0
.end method

.method public final d(Lmb/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljb/a$b;->c()I

    iget v0, p0, Ljb/a$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljb/a$b;->c:I

    invoke-virtual {p1, v1, v0}, Lmb/e;->m(II)V

    :cond_0
    iget v0, p0, Ljb/a$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ljb/a$b;->d:I

    invoke-virtual {p1, v1, v0}, Lmb/e;->m(II)V

    :cond_1
    iget-object v0, p0, Ljb/a$b;->a:Lmb/c;

    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    return-void
.end method

.method public final f()Lmb/p$a;
    .locals 1

    invoke-static {p0}, Ljb/a$b;->i(Ljb/a$b;)Ljb/a$b$b;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Ljb/a$b$b;

    invoke-direct {v0}, Ljb/a$b$b;-><init>()V

    return-object v0
.end method
