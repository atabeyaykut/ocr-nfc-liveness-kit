.class public final Lp4/k9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp4/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp4/u0<",
            "Lp4/i9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/epoxy/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/airbnb/epoxy/a;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lp4/u0;

    .line 7
    .line 8
    iput-object p1, p0, Lp4/k9;->a:Lp4/u0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lp4/k9;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lp4/k9;

    iget-object v0, p0, Lp4/k9;->a:Lp4/u0;

    iget-object p1, p1, Lp4/k9;->a:Lp4/u0;

    invoke-static {v0, p1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lp4/k9;->a:Lp4/u0;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
