.class public final Lga/p;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lga/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lga/p;

    invoke-direct {v0}, Lga/p;-><init>()V

    sput-object v0, Lga/p;->a:Lga/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    const-class v0, Ljava/lang/Object;

    return-object v0
.end method
