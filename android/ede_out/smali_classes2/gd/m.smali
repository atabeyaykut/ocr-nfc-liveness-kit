.class public final Lgd/m;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public final a:Ll9/j;

.field public final b:Ll9/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    sget-object v0, Lgd/m$b;->a:Lgd/m$b;

    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object v0

    iput-object v0, p0, Lgd/m;->a:Ll9/j;

    sget-object v0, Lgd/m$a;->a:Lgd/m$a;

    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object v0

    iput-object v0, p0, Lgd/m;->b:Ll9/j;

    return-void
.end method
