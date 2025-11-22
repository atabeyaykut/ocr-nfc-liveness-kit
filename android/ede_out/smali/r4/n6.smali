.class public final synthetic Lr4/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7/b;


# instance fields
.field public final synthetic a:Lr2/g;


# direct methods
.method public synthetic constructor <init>(Lu2/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/n6;->a:Lr2/g;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lr2/b;

    .line 2
    .line 3
    const-string v1, "json"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lc5/y;->q:Lc5/y;

    .line 9
    .line 10
    iget-object v2, p0, Lr4/n6;->a:Lr2/g;

    .line 11
    .line 12
    const-string v3, "FIREBASE_ML_SDK"

    .line 13
    .line 14
    invoke-interface {v2, v3, v0, v1}, Lr2/g;->a(Ljava/lang/String;Lr2/b;Lr2/e;)Lu2/u;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
