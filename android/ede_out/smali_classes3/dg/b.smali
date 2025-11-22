.class public final Ldg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;


# instance fields
.field public final synthetic a:Lx9/a;


# direct methods
.method public constructor <init>(Ldg/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg/b;->a:Lx9/a;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigateUp()Z
    .locals 2

    iget-object v0, p0, Ldg/b;->a:Lx9/a;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invoke(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
