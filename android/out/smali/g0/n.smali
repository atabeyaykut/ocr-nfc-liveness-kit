.class public final Lg0/n;
.super Lg0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg0/f<",
        "Li0/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq0/a<",
            "Li0/b;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lg0/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final g(Lq0/a;F)Ljava/lang/Object;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget-object p2, p1, Lq0/a;->c:Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Li0/b;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p1, Lq0/a;->b:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Li0/b;

    :goto_1
    return-object p2
.end method
