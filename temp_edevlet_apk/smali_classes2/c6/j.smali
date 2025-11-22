.class public final synthetic Lc6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7/b;


# instance fields
.field public final synthetic a:Lc6/m;

.field public final synthetic b:Lc6/d;


# direct methods
.method public synthetic constructor <init>(Lc6/m;Lc6/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/j;->a:Lc6/m;

    iput-object p2, p0, Lc6/j;->b:Lc6/d;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lc6/j;->a:Lc6/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc6/j;->b:Lc6/d;

    .line 7
    .line 8
    iget-object v2, v1, Lc6/d;->e:Lc6/h;

    .line 9
    .line 10
    new-instance v3, Lc6/y;

    .line 11
    .line 12
    invoke-direct {v3, v1, v0}, Lc6/y;-><init>(Lc6/d;Lc6/m;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v2, v3}, Lc6/h;->i(Lc6/y;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
