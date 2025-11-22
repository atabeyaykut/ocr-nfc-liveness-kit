.class public final Lqd/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lqd/k;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lqd/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd/m;->a:Ljava/lang/Object;

    iput-object p2, p0, Lqd/m;->b:Lqd/k;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lqd/m;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lqd/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lqd/m;

    iget-object v0, p1, Lqd/m;->a:Ljava/lang/Object;

    iget-object v2, p0, Lqd/m;->a:Ljava/lang/Object;

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lqd/m;->b:Lqd/k;

    iget-object p1, p1, Lqd/m;->b:Lqd/k;

    invoke-virtual {v0, p1}, Lqd/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lqd/m;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lqd/m;->b:Lqd/k;

    iget-object v1, v1, Lqd/k;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
