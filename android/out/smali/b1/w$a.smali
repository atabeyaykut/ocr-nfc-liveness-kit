.class public final Lb1/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb1/p<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lb1/w$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/w$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/w$a;

    invoke-direct {v0}, Lb1/w$a;-><init>()V

    sput-object v0, Lb1/w$a;->a:Lb1/w$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb1/s;)Lb1/o;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/s;",
            ")",
            "Lb1/o<",
            "TModel;TModel;>;"
        }
    .end annotation

    sget-object p1, Lb1/w;->a:Lb1/w;

    return-object p1
.end method
