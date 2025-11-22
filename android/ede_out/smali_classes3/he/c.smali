.class public final Lhe/c;
.super Lcom/airbnb/epoxy/s;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ll9/j;

.field public c:Landroidx/viewbinding/ViewBinding;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/epoxy/s;-><init>()V

    iput-object p1, p0, Lhe/c;->a:Ljava/lang/Class;

    new-instance p1, Lhe/c$a;

    invoke-direct {p1, p0}, Lhe/c$a;-><init>(Lhe/c;)V

    invoke-static {p1}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object p1

    iput-object p1, p0, Lhe/c;->b:Ll9/j;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lhe/c;->b:Ll9/j;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/reflect/Method;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "null cannot be cast to non-null type androidx.viewbinding.ViewBinding"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Landroidx/viewbinding/ViewBinding;

    .line 31
    .line 32
    iput-object p1, p0, Lhe/c;->c:Landroidx/viewbinding/ViewBinding;

    .line 33
    .line 34
    return-void
.end method
