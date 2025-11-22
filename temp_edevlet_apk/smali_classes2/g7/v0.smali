.class public final synthetic Lg7/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/e;


# instance fields
.field public final synthetic a:Lg7/a1$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lg7/a1$a;)V
    .locals 0
    .param p1    # Lg7/a1$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7/v0;->a:Lg7/a1$a;

    return-void
.end method


# virtual methods
.method public final b(Lh5/k;)V
    .locals 1
    .param p1    # Lh5/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lg7/v0;->a:Lg7/a1$a;

    .line 2
    .line 3
    iget-object p1, p1, Lg7/a1$a;->b:Lh5/l;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
