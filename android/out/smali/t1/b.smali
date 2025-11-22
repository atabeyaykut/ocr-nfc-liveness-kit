.class public final Lt1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/c;


# instance fields
.field public final a:Ll9/j;

.field public final b:Ll9/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lt1/b$c;->a:Lt1/b$c;

    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object v0

    iput-object v0, p0, Lt1/b;->a:Ll9/j;

    new-instance v0, Lt1/b$b;

    invoke-direct {v0, p1}, Lt1/b$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    sget-object p1, Lt1/b$a;->a:Lt1/b$a;

    invoke-static {p1}, Lc5/y;->w(Lx9/a;)Ll9/j;

    move-result-object p1

    iput-object p1, p0, Lt1/b;->b:Ll9/j;

    return-void
.end method


# virtual methods
.method public final b()Lu1/a;
    .locals 1

    iget-object v0, p0, Lt1/b;->b:Ll9/j;

    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu1/a;

    return-object v0
.end method

.method public final c()Ly1/b;
    .locals 1

    iget-object v0, p0, Lt1/b;->a:Ll9/j;

    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/b;

    return-object v0
.end method
