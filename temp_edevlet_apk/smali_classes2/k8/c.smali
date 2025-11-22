.class public abstract Lk8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Le8/j<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;",
        "Le8/k<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field public a:Le8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/b<",
            "TItem;>;"
        }
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk8/c;->b:Z

    return-void
.end method
