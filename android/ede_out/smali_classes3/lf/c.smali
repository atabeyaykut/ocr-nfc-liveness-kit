.class public final Llf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llf/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Llf/b;

    const v1, 0x7f1300bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1300bb

    const v3, 0x7f08008b

    const/16 v4, 0xb

    invoke-direct {v0, v4, v2, v3, v1}, Llf/b;-><init>(IIILjava/lang/Integer;)V

    sput-object v0, Llf/c;->a:Llf/b;

    return-void
.end method
