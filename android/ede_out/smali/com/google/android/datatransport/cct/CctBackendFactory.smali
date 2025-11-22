.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lv2/h;)Lv2/m;
    .locals 3

    new-instance v0, Ls2/b;

    invoke-virtual {p1}, Lv2/h;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lv2/h;->d()Ld3/a;

    move-result-object v2

    invoke-virtual {p1}, Lv2/h;->c()Ld3/a;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ls2/b;-><init>(Landroid/content/Context;Ld3/a;Ld3/a;)V

    return-object v0
.end method
