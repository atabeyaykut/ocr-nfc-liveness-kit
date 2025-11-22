.class public final Lr0/v0;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Lr0/z<",
        "TS;>;S::",
        "Lr0/p;",
        ">",
        "Landroidx/lifecycle/ViewModel;"
    }
.end annotation


# instance fields
.field public final a:Lr0/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr0/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVM;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lr0/v0;->a:Lr0/z;

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lr0/v0;->a:Lr0/z;

    .line 5
    .line 6
    iget-object v0, v0, Lr0/z;->c:Lnc/a0;

    .line 7
    .line 8
    invoke-static {v0}, Lb8/f;->m(Lnc/a0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
