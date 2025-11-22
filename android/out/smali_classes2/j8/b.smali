.class public final Lj8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk8/a<",
        "Le8/j<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj8/d;

.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lj8/d;Landroidx/collection/ArraySet;)V
    .locals 0

    iput-object p1, p0, Lj8/b;->a:Lj8/d;

    iput-object p2, p0, Lj8/b;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le8/c;Le8/j;I)V
    .locals 1

    iget-object p1, p0, Lj8/b;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj8/b;->a:Lj8/d;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lj8/d;->j(Le8/j;ILjava/util/Iterator;)V

    :cond_0
    return-void
.end method
