.class public final Lp4/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/g;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lt6/c;

.field public final d:Lp4/p1;


# direct methods
.method public constructor <init>(Lp4/p1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp4/s1;->a:Z

    iput-boolean v0, p0, Lp4/s1;->b:Z

    iput-object p1, p0, Lp4/s1;->d:Lp4/p1;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Lt6/g;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp4/s1;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lp4/s1;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lp4/s1;->c:Lt6/c;

    .line 9
    .line 10
    iget-boolean v1, p0, Lp4/s1;->b:Z

    .line 11
    .line 12
    iget-object v2, p0, Lp4/s1;->d:Lp4/p1;

    .line 13
    .line 14
    invoke-virtual {v2, v0, p1, v1}, Lp4/p1;->e(Lt6/c;Ljava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p1, Lt6/b;

    .line 19
    .line 20
    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lt6/b;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final e(Z)Lt6/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp4/s1;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lp4/s1;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lp4/s1;->c:Lt6/c;

    .line 9
    .line 10
    iget-boolean v1, p0, Lp4/s1;->b:Z

    .line 11
    .line 12
    iget-object v2, p0, Lp4/s1;->d:Lp4/p1;

    .line 13
    .line 14
    invoke-virtual {v2, v0, p1, v1}, Lp4/p1;->f(Lt6/c;IZ)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p1, Lt6/b;

    .line 19
    .line 20
    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lt6/b;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method
