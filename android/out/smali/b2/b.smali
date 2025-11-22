.class public final Lb2/b;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lx9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/p<",
            "TT;TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lx9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/p<",
            "TT;TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance p1, Lb2/a;

    .line 2
    .line 3
    invoke-direct {p1}, Lb2/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lb2/a;

    .line 7
    .line 8
    invoke-direct {v0}, Lb2/a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lb2/b;->a:Lx9/p;

    .line 15
    .line 16
    iput-object v0, p0, Lb2/b;->b:Lx9/p;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb2/b;->b:Lx9/p;

    invoke-interface {v0, p1, p2}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb2/b;->a:Lx9/p;

    invoke-interface {v0, p1, p2}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
