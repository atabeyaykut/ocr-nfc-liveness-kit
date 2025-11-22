.class public final synthetic Lx5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7/b;


# instance fields
.field public final synthetic a:Lx5/c;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lx5/c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/b;->a:Lx5/c;

    iput-object p2, p0, Lx5/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lf7/a;

    iget-object v1, p0, Lx5/b;->a:Lx5/c;

    invoke-virtual {v1}, Lx5/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lx5/c;->d:Lc6/m;

    const-class v3, Lx6/c;

    invoke-virtual {v1, v3}, Lc6/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx6/c;

    iget-object v3, p0, Lx5/b;->b:Landroid/content/Context;

    invoke-direct {v0, v3, v2, v1}, Lf7/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lx6/c;)V

    return-object v0
.end method
