.class public final Lp4/j0;
.super Lp4/z;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public b:I

.field public final synthetic c:Lp4/l0;


# direct methods
.method public constructor <init>(Lp4/l0;I)V
    .locals 0

    iput-object p1, p0, Lp4/j0;->c:Lp4/l0;

    invoke-direct {p0}, Lp4/z;-><init>()V

    iget-object p1, p1, Lp4/l0;->c:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lp4/j0;->a:Ljava/lang/Object;

    iput p2, p0, Lp4/j0;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lp4/j0;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget-object v2, p0, Lp4/j0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lp4/j0;->c:Lp4/l0;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v3}, Lp4/l0;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, v3, Lp4/l0;->c:[Ljava/lang/Object;

    .line 17
    .line 18
    iget v1, p0, Lp4/j0;->b:I

    .line 19
    .line 20
    aget-object v0, v0, v1

    .line 21
    .line 22
    invoke-static {v2, v0}, Lp4/m0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lp4/l0;->k:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lp4/l0;->d(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lp4/j0;->b:I

    .line 37
    .line 38
    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lp4/j0;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lp4/j0;->c:Lp4/l0;

    invoke-virtual {v0}, Lp4/l0;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lp4/j0;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lp4/j0;->a()V

    iget v1, p0, Lp4/j0;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, v0, Lp4/l0;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lp4/j0;->c:Lp4/l0;

    invoke-virtual {v0}, Lp4/l0;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lp4/j0;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lp4/j0;->a()V

    iget v1, p0, Lp4/j0;->b:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v2, p1}, Lp4/l0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, v0, Lp4/l0;->d:[Ljava/lang/Object;

    aget-object v2, v0, v1

    aput-object p1, v0, v1

    return-object v2
.end method
