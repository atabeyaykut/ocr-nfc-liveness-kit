.class public final Ld8/g;
.super Lv7/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv7/e<",
        "Lc8/e;",
        "Ld8/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lv7/h;


# direct methods
.method public constructor <init>(Lv7/h;)V
    .locals 0

    invoke-direct {p0}, Lv7/e;-><init>()V

    iput-object p1, p0, Ld8/g;->b:Lv7/h;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lc8/e;

    new-instance v0, Ld8/h;

    iget-object v1, p0, Ld8/g;->b:Lv7/h;

    invoke-direct {v0, v1, p1}, Ld8/h;-><init>(Lv7/h;Lc8/e;)V

    return-object v0
.end method
