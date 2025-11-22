.class public abstract Lhe/a;
.super Lcom/airbnb/epoxy/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/airbnb/epoxy/v<",
        "Lhe/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/epoxy/v;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bind(Landroidx/viewbinding/ViewBinding;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public bridge synthetic bind(Lcom/airbnb/epoxy/s;)V
    .locals 0

    check-cast p1, Lhe/c;

    invoke-virtual {p0, p1}, Lhe/a;->bind(Lhe/c;)V

    return-void
.end method

.method public bind(Lhe/c;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lhe/c;->c:Landroidx/viewbinding/ViewBinding;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lhe/a;->bind(Landroidx/viewbinding/ViewBinding;)V

    return-void

    :cond_0
    const-string p1, "viewBinding"

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lhe/c;

    invoke-virtual {p0, p1}, Lhe/a;->bind(Lhe/c;)V

    return-void
.end method

.method public bridge synthetic createNewHolder(Landroid/view/ViewParent;)Lcom/airbnb/epoxy/s;
    .locals 0

    invoke-virtual {p0, p1}, Lhe/a;->createNewHolder(Landroid/view/ViewParent;)Lhe/c;

    move-result-object p1

    return-object p1
.end method

.method public createNewHolder(Landroid/view/ViewParent;)Lhe/c;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lhe/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lhe/c;-><init>(Ljava/lang/Class;)V

    return-object p1
.end method
