.class public abstract Le8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Le8/j<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;",
        "Le8/c<",
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

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le8/a;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)Le8/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lf8/c;

    invoke-virtual {v0, p1}, Lf8/c;->d(I)Le8/j;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Le8/a;->b:I

    return-void
.end method
