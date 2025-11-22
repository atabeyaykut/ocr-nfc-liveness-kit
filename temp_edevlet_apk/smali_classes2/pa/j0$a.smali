.class public final Lpa/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lpa/j0$a;

.field public static final b:Lcom/airbnb/epoxy/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/a;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpa/j0$a;

    invoke-direct {v0}, Lpa/j0$a;-><init>()V

    sput-object v0, Lpa/j0$a;->a:Lpa/j0$a;

    new-instance v0, Lcom/airbnb/epoxy/a;

    const-string v1, "PackageViewDescriptorFactory"

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpa/j0$a;->b:Lcom/airbnb/epoxy/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
