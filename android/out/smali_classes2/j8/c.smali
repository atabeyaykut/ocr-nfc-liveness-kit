.class public final Lj8/c;
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
.field public final synthetic a:Landroidx/collection/ArraySet;


# direct methods
.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 0

    iput-object p1, p0, Lj8/c;->a:Landroidx/collection/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le8/c;Le8/j;I)V
    .locals 0

    invoke-interface {p2}, Le8/j;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj8/c;->a:Landroidx/collection/ArraySet;

    invoke-virtual {p1, p2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
