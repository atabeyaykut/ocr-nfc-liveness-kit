.class public final Lj0/h;
.super Lj0/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj0/n;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lj0/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final c()Lg0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg0/a<",
            "Lk0/k;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg0/l;

    iget-object v1, p0, Lj0/n;->b:Ljava/util/Collection;

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lg0/l;-><init>(Ljava/util/List;)V

    return-object v0
.end method
