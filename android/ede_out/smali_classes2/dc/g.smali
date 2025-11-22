.class public final Ldc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/airbnb/epoxy/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/a;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/airbnb/epoxy/a;

    const-string v1, "KotlinTypeRefiner"

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldc/g;->a:Lcom/airbnb/epoxy/a;

    return-void
.end method
