.class public final Lr3/c0;
.super Lr3/d0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lo3/g;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lo3/g;)V
    .locals 0

    iput-object p1, p0, Lr3/c0;->a:Landroid/content/Intent;

    iput-object p2, p0, Lr3/c0;->b:Lo3/g;

    invoke-direct {p0}, Lr3/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lr3/c0;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr3/c0;->b:Lo3/g;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lo3/g;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
