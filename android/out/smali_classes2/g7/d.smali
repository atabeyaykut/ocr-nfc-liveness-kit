.class public final synthetic Lg7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/e;


# instance fields
.field public final synthetic a:Lg7/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic b:Landroid/content/Intent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lg7/g;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Lg7/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7/d;->a:Lg7/g;

    iput-object p2, p0, Lg7/d;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final b(Lh5/k;)V
    .locals 1
    .param p1    # Lh5/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lg7/d;->a:Lg7/g;

    iget-object v0, p0, Lg7/d;->b:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lg7/g;->a(Landroid/content/Intent;)V

    return-void
.end method
