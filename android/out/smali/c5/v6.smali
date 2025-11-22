.class public final synthetic Lc5/v6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/x6;

.field public final synthetic b:I

.field public final synthetic c:Lc5/e3;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lc5/x6;ILc5/e3;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/v6;->a:Lc5/x6;

    iput p2, p0, Lc5/v6;->b:I

    iput-object p3, p0, Lc5/v6;->c:Lc5/e3;

    iput-object p4, p0, Lc5/v6;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc5/v6;->a:Lc5/x6;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/x6;->a:Landroid/content/Context;

    .line 4
    .line 5
    check-cast v1, Lc5/w6;

    .line 6
    .line 7
    iget v2, p0, Lc5/v6;->b:I

    .line 8
    .line 9
    invoke-interface {v1, v2}, Lc5/w6;->a(I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lc5/v6;->c:Lc5/e3;

    .line 16
    .line 17
    iget-object v3, v3, Lc5/e3;->p:Lc5/c3;

    .line 18
    .line 19
    const-string v4, "Local AppMeasurementService processed last upload request. StartId"

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v3, v2, v4}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lc5/x6;->c()Lc5/e3;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "Completed wakeful intent."

    .line 33
    .line 34
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lc5/v6;->d:Landroid/content/Intent;

    .line 40
    .line 41
    invoke-interface {v1, v0}, Lc5/w6;->b(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
