.class public final Lcom/airbnb/epoxy/q$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/airbnb/epoxy/u<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    check-cast p2, Lcom/airbnb/epoxy/u;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/u;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    check-cast p2, Lcom/airbnb/epoxy/u;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/airbnb/epoxy/u;->id()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p2}, Lcom/airbnb/epoxy/u;->id()J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    cmp-long v2, v0, p1

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/u;

    .line 2
    .line 3
    check-cast p2, Lcom/airbnb/epoxy/u;

    .line 4
    .line 5
    new-instance p2, Lcom/airbnb/epoxy/l;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lcom/airbnb/epoxy/l;-><init>(Lcom/airbnb/epoxy/u;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method
