.class public final Lj8/a;
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


# direct methods
.method public constructor <init>(Lj8/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lj8/a;->a:Lj8/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le8/c;Le8/j;I)V
    .locals 1

    iget-object p1, p0, Lj8/a;->a:Lj8/d;

    const/4 p3, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lj8/d;->j(Le8/j;ILjava/util/Iterator;)V

    return-void
.end method
